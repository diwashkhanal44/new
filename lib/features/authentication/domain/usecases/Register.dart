import 'package:you/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:you/core/usecases/usecase.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';
import 'package:you/features/authentication/domain/repositories/AuthRepository.dart';

class RegisterUsecase extends UseCase<LoginCredentialModel, SignUpDTO> {
  final AuthRepository _authRepository;

  RegisterUsecase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<Either<Failure, LoginCredentialModel>> call(SignUpDTO params) async {
    return await _authRepository.register(
        name: params.name,
        username: params.username,
        email: params.email,
        mobile: params.mobile,
        password: params.password,
        confirm_password: params.confirm_password,
        role: params.role);
  }
}

class SignUpDTO {
  final String name;
  final String username;
  final String email;
  final String mobile;
  final String password;
  final String confirm_password;
  final String role; //['Subscriber','Publisher']

  SignUpDTO(
      {required this.name,
      required this.username,
      required this.email,
      required this.mobile,
      required this.password,
      required this.confirm_password,
      required this.role});
}
