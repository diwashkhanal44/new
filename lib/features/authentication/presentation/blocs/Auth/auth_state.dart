part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  final UserProfile? userProfile;
  AuthState({this.userProfile});
}

class InitialAuth extends AuthState {
  @override
  List<Object?> get props => [userProfile];
}

class LoadingAuth extends AuthState {
  @override
  List<Object?> get props => [userProfile];
}

class FailedAuth extends AuthState {
  final String failedMessage;

  FailedAuth({required this.failedMessage});
  @override
  List<Object?> get props => [userProfile, failedMessage];
}

class Authenticated extends AuthState {
  Authenticated({required UserProfile userProfile})
      : super(userProfile: userProfile);

  @override
  List<Object?> get props => [userProfile];
}

class Unauthenticated extends AuthState {
  @override
  List<Object?> get props => [userProfile];
}
