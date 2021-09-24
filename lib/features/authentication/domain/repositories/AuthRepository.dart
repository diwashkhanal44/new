import 'package:dartz/dartz.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';
import 'package:you/features/authentication/data/models/UserProfile.dart';

abstract class AuthRepository {
  // login user if success returns
  Future<Either<Failure, LoginCredentialModel>> login({
    required String username,
    required String password,
    required String grantType,
    required String clientId,
    required String clientSecret,
    required String scope,
  });

  //register
  Future<Either<Failure, LoginCredentialModel>> register({
    required String name,
    required String username,
    required String email,
    required String mobile,
    required String password,
    required String confirm_password,
    required String role,
  });

  // get the user profile
  Future<Either<Failure, UserProfile>> getUserProfile(bool force);
}
