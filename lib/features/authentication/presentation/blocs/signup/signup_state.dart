part of 'signup_cubit.dart';

@freezed
abstract class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.loading() = _Loading;

  const factory SignupState.success(
      {required LoginCredentialModel signupModel}) = _Success;

  const factory SignupState.failed({required String failureMessage}) = _Failed;
}
