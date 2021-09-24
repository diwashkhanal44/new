import 'package:logging/logging.dart';
import 'package:dartz/dartz.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/usecases/usecase.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';
import 'package:you/features/authentication/domain/repositories/AuthRepository.dart';

class Login implements UseCase<LoginCredentialModel, LoginCredentialDTO> {
  final AuthRepository _authRepository;
  final _logger = Logger("LoginUsecase");

  Login({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<Either<Failure, LoginCredentialModel>> call(params) async {
    _logger.info("logging in");
    return await _authRepository.login(
        username: params.username,
        password: params.password,
        grantType: params.grantType,
        clientId: params.clientId,
        clientSecret: params.clientSecret,
        scope: params.scope);
  }
}

class LoginCredentialDTO {
  final String username;
  final String password;
  late final String grantType;
  late final String clientId;
  late final String clientSecret;
  late final String scope;

  LoginCredentialDTO({
    required this.username,
    required this.password,
    String? grantType,
    String? clientId,
    String? clientSecret,
    String? scope,
  }) {
    // get the client id and clientSecret
    this.clientId = clientId ?? _getClientId;
    this.clientSecret = clientSecret ?? _getClientSecrete;
    this.scope = scope ?? _scope;
    this.grantType = grantType ?? _grantType;
  }
  // String get _getClientId => String.fromEnvironment('client_id');
  // String get _getClientSecrete => String.fromEnvironment('client_secret');
  // String get _scope => String.fromEnvironment('scope');
  // String get _grantType => String.fromEnvironment('grant_type');

  String get _getClientId => "2";
  String get _getClientSecrete => "ZDkMX1pBlihysThlgJMdmA0WDPZNi2A2P0uFVk7T";
  String get _scope => "*";
  String get _grantType => "password";
}
