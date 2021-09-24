import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'UserProfile.freezed.dart';
part 'UserProfile.g.dart';

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str));

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required Data? data,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required int? id,
    required String? name,
    required String? name_np,
    required String? address,
    required String? name_final,
    required String? email,
    required String? name_combined,
    required String? mobile,
    required int? gender,
    required int? pwd_reset,
    required String? label,
    required List<Source>? sources,
    required String? profile_photo,
    required String? username,
    required int? roles,
    required RoleParsed? roleParsed,
    required List<Permission>? permissions,
    required String? created_at,
    required Personalization? personalization,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Permission with _$Permission {
  const factory Permission({
    required int? id,
    required int? value,
    required String? name,
    required String? guard_name,
    required String? group,
    required String? display_name,
    required String? name_final,
    required String? name_combined,
    required String? label,
    required DateTime? created_at,
  }) = _Permission;

  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);
}

@freezed
abstract class Personalization with _$Personalization {
  const factory Personalization({
    required dynamic language,
    required List<int>? categories,
  }) = _Personalization;

  factory Personalization.fromJson(Map<String, dynamic> json) =>
      _$PersonalizationFromJson(json);
}

@freezed
abstract class Language with _$Language {
  const factory Language({
    required int? id,
    required String? name,
    required String? language_code,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

@freezed
abstract class RoleParsed with _$RoleParsed {
  const factory RoleParsed({
    required int? id,
    required String? display_name,
    required String? display_name_np,
    required String? name_final,
    required String? name_combined,
    required String? name,
    required String? guard_name,
    required int? is_for_office,
  }) = _RoleParsed;

  factory RoleParsed.fromJson(Map<String, dynamic> json) =>
      _$RoleParsedFromJson(json);
}

@freezed
abstract class Source with _$Source {
  const factory Source({
    required String? asd,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
