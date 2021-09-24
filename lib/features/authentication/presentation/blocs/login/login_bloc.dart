import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:you/core/utils/LoginCredintialCheck.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';
import 'package:you/features/authentication/domain/usecases/Login.dart';
import 'package:you/features/authentication/domain/usecases/SocialsAuthentication.dart';

part 'login_event.dart';
part 'login_state.dart';

/// handles only login
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Login _loginUsecase;
  final SocialsAuthentication _socialsAuthentication;
  final LoginCredintialCheck _loginCredintialCheck = LoginCredintialCheck();
  final Logger _logger = Logger("LoginBloc");

  LoginBloc({
    required Login loginUsecase,
    required SocialsAuthentication socialsAuthentication,
  })  : _loginUsecase = loginUsecase,
        _socialsAuthentication = socialsAuthentication,
        super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginAttempt) {
      _logger.info("LoginAttempt event added");
      yield* _mapLoginAttemptToLoginState(event);
    }

    if (event is SocialLogin) {
      _logger.info("SocialLogin");
      yield* _mapSocialLoginToLoginState(event);
    }
  }

  Stream<LoginState> _mapSocialLoginToLoginState(SocialLogin event) async* {
    yield LoginLoading();
    final _loginResult =
        await _socialsAuthentication.signIn(loginProvider: event.loginProvider);

    yield* _loginResult.fold((l) async* {
      _logger.warning(l.failureMessage);
      yield LoginFailed(message: l.description ?? l.failureMessage);
    }, (r) async* {
      _logger.fine("login success");
      yield LoginSuccess(credential: r);
    });
  }

  Stream<LoginState> _mapLoginAttemptToLoginState(LoginAttempt event) async* {
    yield LoginLoading();
    final result = _loginCredintialCheck(event.loginDTO);

    yield* result.fold((l) async* {
      _logger.warning(l);
      yield LoginFailed(message: l);
    }, (r) async* {
      final _loginResult = await _loginUsecase(event.loginDTO);
      yield* _loginResult.fold((l) async* {
        _logger.warning(l.failureMessage);
        yield LoginFailed(message: l.description ?? l.failureMessage);
      }, (r) async* {
        _logger.fine("login success");
        yield LoginSuccess(credential: r);
      });
    });
  }
}
