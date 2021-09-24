import 'package:dartz/dartz.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/radios/models/FavoriteRadioModel/FavoriteRadiosModel.dart';
import 'package:you/features/radios/models/RadiosModel.dart';
import 'package:you/features/radios/models/toggle_favorite/ToggleFavorite.dart';

class RadioServices {
  final HttpCalls _httpCalls;

  RadioServices({required HttpCalls httpCalls}) : _httpCalls = httpCalls;

  /// get radio stations all if publisher id is not defined
  Future<Either<Failure, RadiosModel>> getRadioStations(
      {int? page, int? rowsPerPage}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          path: Endpoints.radios,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          queryParameters: {
            "page": (page ?? 1).toString(),
            "rowsPerPage": (rowsPerPage ?? rowsPerPageDefault).toString()
          });

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(RadiosModel.fromJson(apiResponse));
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

  Future<Either<Failure, ToggleFavorite>> toggleFavoriteRadio(
      int stationId) async {
    /// get radio stations all if publisher id is not defined
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path:
            Endpoints.toggleFavoriteRadio.replaceAll('{radioId}', "$stationId"),
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );

      final apiResponse = await _httpCalls(
          url: uri.toString(), method: ApiCallMethod.POST, guarded: true);

      return Right(ToggleFavorite.fromJson(apiResponse));
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

  Future<Either<Failure, FavoriteRadiosModel>> getFavoriteRadioStation() async {
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.getFavoriteRadio,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );

      final apiResponse = await _httpCalls(
          url: uri.toString(), method: ApiCallMethod.GET, guarded: true);

      return Right(FavoriteRadiosModel.fromJson(apiResponse));
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
