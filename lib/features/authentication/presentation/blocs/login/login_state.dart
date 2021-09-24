part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginCredentialModel credential;

  LoginSuccess({required this.credential});
  @override
  List<Object> get props => [credential];
}

class LoginFailed extends LoginState {
  final String message;

  LoginFailed({required this.message});
  @override
  List<Object> get props => [message];
}
