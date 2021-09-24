import 'package:dartz/dartz.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/usecases/usecase.dart';
import 'package:you/features/authentication/data/models/UserProfile.dart';
import 'package:you/features/authentication/domain/repositories/AuthRepository.dart';

class GetUserProfile implements UseCase<UserProfile, bool> {
  final AuthRepository _authRepository;

  GetUserProfile({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<Either<Failure, UserProfile>> call(bool force) =>
      _authRepository.getUserProfile(force);
}
