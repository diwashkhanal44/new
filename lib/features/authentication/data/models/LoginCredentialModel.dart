import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'LoginCredentialModel.freezed.dart';
part 'LoginCredentialModel.g.dart';

LoginCredentialModel loginCredentialModelFromJson(String str) =>
    LoginCredentialModel.fromJson(json.decode(str));

String loginCredentialModelToJson(LoginCredentialModel data) =>
    json.encode(data.toJson());

@freezed
abstract class LoginCredentialModel with _$LoginCredentialModel {
  const factory LoginCredentialModel({
    required Data? data,
  }) = _LoginCredentialModel;

  factory LoginCredentialModel.fromJson(Map<String, dynamic> json) =>
      _$LoginCredentialModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required String? accessToken,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
