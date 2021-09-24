import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/external/http_calls/http_calls.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required HttpCalls httpCalls})
      : _httpCalls = httpCalls,
        super(ProfileState.initial());

  final HttpCalls _httpCalls;

  Future<void> updateProfile({
    File? profilePhoto,
    String? name,
    String? name_nepali,
    String? username,
    String? mobile,
    String? email,
    String? address,
    int? languageId,
  }) async {
    try {
      emit(ProfileState.loading());
      final Map<String, String> fields = {};
      if (name != null) fields["name"] = name;
      if (name_nepali != null) fields["name_np"] = name_nepali;
      if (username != null) fields["username"] = username;
      if (mobile != null) fields["mobile"] = mobile;
      if (email != null) fields["email"] = email;
      if (address != null) fields["address"] = address;
      if (languageId != null) fields["language_id"] = languageId.toString();
      final Map<String, File> filesField = {};
      if (profilePhoto != null) filesField["photo"] = profilePhoto;

      final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.profilePost,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );
      final response = await _httpCalls.multipart(
          url: uri.toString(), filesField: filesField, fields: fields);
      emit(ProfileState.loaded());
    } on ServerException catch (e) {
      emit(ProfileState.failed(message: e.message));
    } catch (e) {
      emit(ProfileState.failed(message: "$e"));
    }
  }
}
