import 'package:dartz/dartz.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/weather/models/WeatherModel.dart';

class WeatherRepositories {
  final HttpCalls _httpCalls;
  WeatherRepositories({required HttpCalls httpCalls}) : _httpCalls = httpCalls;

  Future<Either<Failure, WeatherModel>> getTheWeather() async {
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.weather,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(WeatherModel.fromJson(apiResponse));
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
}
