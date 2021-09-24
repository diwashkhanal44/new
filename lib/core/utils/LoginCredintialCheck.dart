import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';
import 'package:you/features/authentication/domain/usecases/Login.dart';

class LoginCredintialCheck {
  final Logger _logger = Logger("LoginCredintialCheck");

  Either<String, bool> call(final LoginCredentialDTO _credentialDTO) {
    _logger.info("verifying the credintials");

    if (_credentialDTO.username.isEmpty) return Left("username can't be empty");

    if (_credentialDTO.password.length < 6)
      return Left("password at least should be 6 character long");

    return Right(true);

    //TODO add password validation
    // TODO: add username validation
  }
}
