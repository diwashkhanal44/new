import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:you/core/usecases/usecase.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';
import 'package:you/features/authentication/data/models/UserProfile.dart';
import 'package:you/features/authentication/domain/usecases/GetUserProfile.dart';

part 'auth_state.dart';

const String _loginCredintialKey = "loginCredential";

class AuthCubit extends Cubit<AuthState> {
  final FlutterSecureStorage _flutterSecureStorage;
  final SharedPreferences _sharedPreferences;
  final GetUserProfile _userProfileUseCase;
  final _logger = Logger("AuthCubit");
  AuthCubit(
      {required FlutterSecureStorage flutterSecureStorage,
      required SharedPreferences sharedPreferences,
      required GetUserProfile userProfileUseCase})
      : _userProfileUseCase = userProfileUseCase,
        _sharedPreferences = sharedPreferences,
        _flutterSecureStorage = flutterSecureStorage,
        super(InitialAuth());

  void checkAuthState() async {
    emit(LoadingAuth());
    _logger.info("auth status checking");
    try {
      final credential =
          await _flutterSecureStorage.read(key: _loginCredintialKey);

      if (credential == null) {
        emit(Unauthenticated());
        _logger.info("user unauthenticated");
      } else {
        final userProfile = await _userProfileUseCase(false);

        userProfile.fold((l) {
          _logger.severe("${l.failureMessage} ${l.description} ");
          emit(Unauthenticated());
        }, (r) {
          _logger.info("user authenticated");

          emit(Authenticated(userProfile: r));
        });
      }
    } catch (e) {
      emit(FailedAuth(failedMessage: '$e'));
    }
  }

  void logout() {
    emit(Unauthenticated());
    _logger.info("user unauthenicated");

    this._sharedPreferences.clear();
    this._flutterSecureStorage.deleteAll();
  }

  void login({required final LoginCredentialModel loginCredential}) async {
    try {
      emit(LoadingAuth());

      _logger.info("Loading after login");
      // get user profile
      await _flutterSecureStorage.write(
          key: _loginCredintialKey,
          value: loginCredentialModelToJson(loginCredential));

      final userProfile = await _userProfileUseCase(true);

      _logger.info("User authenticated done $loginCredential");
      userProfile.fold((l) {
        _logger.severe("${l.failureMessage}");
        emit(Unauthenticated());
      }, (r) {
        _logger.info("user authenticated");

        emit(Authenticated(userProfile: r));
      });
    } catch (e) {
      _logger.severe("failure $e");

      emit(FailedAuth(
        failedMessage: "unknown error",
      ));
    }
  }

  void getProfile() async {
    final userProfile = await _userProfileUseCase(true);

    userProfile.fold((l) {}, (r) {
      emit(Authenticated(userProfile: r));
    });
  }

  bool hasPermission(String permission) {
    if (state.userProfile == null) return false;

    return state.userProfile!.data!.permissions!
            .indexWhere((element) => element.name == permission) !=
        -1;
  }
}
