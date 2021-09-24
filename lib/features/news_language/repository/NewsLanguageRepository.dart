import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/news_language/models/LanguageModel.dart';

class NewsLanguageRepository {
  final HttpCalls _httpCalls;
  final String _keyToLocalStorage = "NewsLanguage";
  final SharedPreferences _sharedPreferences;
  NewsLanguageRepository(
      {required HttpCalls httpCalls,
      required SharedPreferences sharedPreferences})
      : _httpCalls = httpCalls,
        _sharedPreferences = sharedPreferences;

  Future<Either<Failure, LanguageModel>> getTheNewsLanguage() async {
    try {
      Future<LanguageModel> getTheRemoteDataAndSaveInTheLocalStorage() async {
        final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.getAllTheLanguages,
        );
        final apiResponse =
            await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

        final newsnewsLanguages = LanguageModel.fromJson(apiResponse);
        _saveToLocalStorage(languageModelToJson(newsnewsLanguages));

        return newsnewsLanguages;
      }

      final localData = _getFromLocalStorage();
      if (localData != null) {
        // this is called so that the data in local
        // is refresh with the new data providing the
        // user old data quickly
        getTheRemoteDataAndSaveInTheLocalStorage();

        return Right(languageModelFromJson(localData));
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

  void _saveToLocalStorage(String dataToSave) {
    _sharedPreferences.setString(_keyToLocalStorage, dataToSave);
  }

  String? _getFromLocalStorage() {
    return _sharedPreferences.getString(_keyToLocalStorage);
  }
}
