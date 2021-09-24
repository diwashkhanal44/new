import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';
import 'package:you/features/authentication/domain/usecases/Register.dart';
import 'package:you/features/authentication/domain/usecases/SocialsAuthentication.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final _logger = Logger("SignupCubit");
  final RegisterUsecase _usecase;
  final SocialsAuthentication _socialsAuthentication;

  SignupCubit(
      {required RegisterUsecase usecase,
      required SocialsAuthentication socialsAuthentication})
      : _usecase = usecase,
        _socialsAuthentication = socialsAuthentication,
        super(SignupState.initial());

  void signUp(
      {required String name,
      required String username,
      required String email,
      required String mobile,
      required String password,
      required String confirm_password,
      required String role}) async {
    emit(SignupState.loading());

    final signUp = await _usecase(SignUpDTO(
        name: name,
        username: username,
        email: email,
        mobile: mobile,
        password: password,
        confirm_password: confirm_password,
        role: role));

    signUp.fold(
        (l) => {
              _logger.severe(l.failureMessage),
              emit(SignupState.failed(failureMessage: l.failureMessage))
            },
        (r) => {
              _logger.info('success'),
              emit(SignupState.success(signupModel: r))
            });
  }

  void socialSignup(LoginProvider loginProvider) async {
    emit(SignupState.loading());

    final signUp =
        await _socialsAuthentication.signIn(loginProvider: loginProvider);

    signUp.fold(
        (l) => {
              _logger.severe(l.failureMessage),
              emit(SignupState.failed(failureMessage: l.failureMessage))
            },
        (r) => {
              _logger.info('success'),
              _logger.info("signupmodel ${r}"),
              emit(SignupState.success(signupModel: r))
            });
  }
}
