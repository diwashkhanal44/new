import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/all_news/models/NewsTopics.dart';

class NewsTopicsRepository {
  final HttpCalls _httpCalls;
  final String _keyToLocalStorage = "NewsTopicsUnauthenticated";
  final SharedPreferences _sharedPreferences;
  NewsTopicsRepository(
      {required HttpCalls httpCalls,
      required SharedPreferences sharedPreferences})
      : _httpCalls = httpCalls,
        _sharedPreferences = sharedPreferences;

  Future<Either<Failure, NewsTopics>> getTheNewsTopics(
      {int? page, int? rowsPerPage, String? language}) async {
    try {
      Future<NewsTopics> getTheRemoteDataAndSaveInTheLocalStorage() async {
        final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.topicsByLanguage
              .replaceAll('{langcode}', language ?? 'en'),
        );
        final apiResponse =
            await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

        final newsTopics = NewsTopics.fromJson(apiResponse);
        _saveToLocalStorage(newsTopicsToJson(newsTopics), language);

        return newsTopics;
      }

      final localData = _getFromLocalStorage(language);
      if (localData != null) {
        // this is called so that the data in local
        // is refresh with the new data providing the
        // user old data quickly
        getTheRemoteDataAndSaveInTheLocalStorage();

        return Right(newsTopicsFromJson(localData));
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
