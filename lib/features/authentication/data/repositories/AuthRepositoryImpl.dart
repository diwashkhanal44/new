import 'package:dartz/dartz.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/authentication/data/data_source/AuthLocalDataSource.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';
import 'package:you/features/authentication/data/models/UserProfile.dart';
import 'package:you/features/authentication/domain/repositories/AuthRepository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final HttpCalls _httpCalls;
  final AuthLocalDataSource _authLocalDataSource;
  AuthRepositoryImpl(
      {required HttpCalls httpCalls,
      required AuthLocalDataSource authLocalDataSource})
      : _httpCalls = httpCalls,
        _authLocalDataSource = authLocalDataSource;

  @override
  Future<Either<Failure, LoginCredentialModel>> login(
      {required String username,
      required String password,
      required String grantType,
      required String clientId,
      required String clientSecret,
      required String scope}) async {
    try {
      final body = {
        "username": username,
        "password": password,
        "grant_type": grantType,
        "client_id": clientId,
        "client_secret": clientSecret,
        "scope": scope,
      };

      final response = await _httpCalls(
          url: Endpoints.baseWithScheme + "${Endpoints.login}",
          method: ApiCallMethod.POST,
          body: body);

      return Right(LoginCredentialModel.fromJson(response));
    } catch (error) {
      if (error is ServerException) {
        return Left(ServerFailure(
            failureMessage: error.message,
            description: error.description,
            statusCode: error.statusCode));
      }
      return Left(UnknownFailure(
        failureMessage: "$error",
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfile>> getUserProfile(bool force) async {
    try {
      final localProfileData = _authLocalDataSource.getLocalProfileData();

      if (force) {
        return Right(await _getRemoteProfile());
      }
      if (localProfileData != null) {
        // to get the new data and save in the local
        _getRemoteProfile();
        return Right(localProfileData);
      } else {
        return Right(await _getRemoteProfile());
      }
    } on ServerException catch (error) {
      return Left(ServerFailure(
          failureMessage: error.message,
          description: error.description,
          statusCode: error.statusCode));
    } catch (e) {
      return Left(
        UnknownFailure(
          failureMessage: "$e",
        ),
      );
    }
  }

  Future<UserProfile> _getRemoteProfile() async {
    try {
      final response = await _httpCalls(
          url: Endpoints.baseWithScheme + "${Endpoints.profile}",
          method: ApiCallMethod.GET,
          guarded: true);
      final userProfileFromServer = UserProfile.fromJson(response);
      await _authLocalDataSource.setLocalProfileData(userProfileFromServer);
      return userProfileFromServer;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<Either<Failure, LoginCredentialModel>> register(
      {required String name,
      required String username,
      required String email,
      required String mobile,
      required String password,
      required String confirm_password,
      required String role}) async {
    try {
      final Map<String, String> body = {
        "name": name,
        "username": username,
        "email": email,
        "mobile": mobile,
        "password": password,
        "confirm_password": confirm_password,
        "role": role
      };

      final response = await _httpCalls(
        url: Endpoints.baseWithScheme + "${Endpoints.register}",
        method: ApiCallMethod.POST,
        body: body,
      );

      return Right(LoginCredentialModel.fromJson(response));
    } catch (error) {
      if (error is ServerException) {
        return Left(ServerFailure(
            failureMessage: error.message,
            description: error.description,
            statusCode: error.statusCode));
      }
      return Left(UnknownFailure(
        failureMessage: "$error",
      ));
    }
  }
}
