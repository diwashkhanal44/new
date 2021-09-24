part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginAttempt extends LoginEvent {
  final LoginCredentialDTO loginDTO;

  LoginAttempt({required this.loginDTO});
  @override
  List<Object> get props => [loginDTO];
}

class SocialLogin extends LoginEvent {
  final LoginProvider loginProvider;

  SocialLogin(this.loginProvider);
  @override
  List<Object> get props => [loginProvider];
}
