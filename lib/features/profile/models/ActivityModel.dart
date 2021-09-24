// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final activityModel = activityModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ActivityModel.freezed.dart';
part 'ActivityModel.g.dart';

ActivityModel activityModelFromJson(String str) =>
    ActivityModel.fromJson(json.decode(str));

String activityModelToJson(ActivityModel data) => json.encode(data.toJson());

@freezed
abstract class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required List<Datum>? data,
    required Links? links,
    required Meta? meta,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? log_name,
    required String? description,
    required String? ip,
    required String? agent,
    required Properties? properties,
    required Causer? causer,
    required String? causer_type,
    required DateTime? created_at,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class Causer with _$Causer {
  const factory Causer({
    required int? id,
    required String? name_final,
    required int? value,
    required String? email,
    required String? mobile,
    required String? username,
    required List<Role>? roles,
  }) = _Causer;

  factory Causer.fromJson(Map<String, dynamic> json) => _$CauserFromJson(json);
}

@freezed
abstract class Role with _$Role {
  const factory Role({
    required int? id,
    required String? display_name,
    required String? display_name_np,
    required String? name_final,
    required String? name_combined,
    required String? name,
    required String? guard_name,
    required int? is_for_office,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
abstract class Properties with _$Properties {
  const factory Properties({
    required Old? old,
    required Attributes? attributes,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}

@freezed
abstract class Attributes with _$Attributes {
  const factory Attributes({
    required String? name,
    required String? email,
    required String? mobile,
    required String? name_np,
    required DateTime? updated_at,
    required int? id,
    required String? comment,
    required int? news_id,
    required int? reply_id,
    required int? parent_id,
    required DateTime? created_at,
    required DateTime? deleted_at,
    required int? publisher_id,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
abstract class Old with _$Old {
  const factory Old({
    required String? name,
    required String? email,
    required String? mobile,
    required String? name_np,
    required DateTime? updated_at,
  }) = _Old;

  factory Old.fromJson(Map<String, dynamic> json) => _$OldFromJson(json);
}

@freezed
abstract class Links with _$Links {
  const factory Links({
    required String? first,
    required String? last,
    required String? prev,
    required String? next,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required int? current_page,
    required int? from,
    required int? last_page,
    required List<Link>? links,
    required String? path,
    required String? per_page,
    required int? to,
    required int? total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class Link with _$Link {
  const factory Link({
    required String? url,
    required String? label,
    required bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
