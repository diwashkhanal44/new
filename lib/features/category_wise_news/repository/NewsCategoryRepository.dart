import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/category_wise_news/models/NewsCategory.dart';

class NewsCategoryRepository {
  final HttpCalls _httpCalls;
  final String _keyToLocalStorage = "NewsCategoriesUnauthenticated";
  final SharedPreferences _sharedPreferences;
  NewsCategoryRepository(
      {required HttpCalls httpCalls,
      required SharedPreferences sharedPreferences})
      : _httpCalls = httpCalls,
        _sharedPreferences = sharedPreferences;

  Future<Either<Failure, NewsCategory>> getTheNewsCategory(
      {int? page, int? rowsPerPage, String? language}) async {
    try {
      Future<NewsCategory> getTheRemoteDataAndSaveInTheLocalStorage() async {
        final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.getCategoriesOfnews +
              ((language != null) ? "/$language" : '').trim(),
        );
        final apiResponse =
            await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

        final newsCategory = NewsCategory.fromJson(apiResponse);
        _saveToLocalStorage(newsCategoryToJson(newsCategory), language);

        return newsCategory;
      }

      final localData = _getFromLocalStorage(language);
      if (localData != null) {
        // this is called so that the data in local
        // is refresh with the new data providing the
        // user old data quickly
        getTheRemoteDataAndSaveInTheLocalStorage();

        return Right(newsCategoryFromJson(localData));
      } else {
        return Right(await getTheRemoteDataAndSaveInTheLocalStorage());
      }
    } catch (e) {
      if (e is ServerException) {
        return Left(ServerFailure(
            failureMessage: e.message,
            description: e.description,
            statusCode: e.statusCode));
      }
      return Left(UnknownFailure(failureMessage: '$e'));
    }
  }

  void _saveToLocalStorage(String dataToSave, String? language) {
    _sharedPreferences.setString(
        _keyToLocalStorage + (language ?? ''), dataToSave);
  }

  String? _getFromLocalStorage(String? language) {
    return _sharedPreferences.getString(_keyToLocalStorage + (language ?? ''));
  }
}
