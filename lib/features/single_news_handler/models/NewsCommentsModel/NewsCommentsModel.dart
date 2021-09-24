// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final newsCommentsModel = newsCommentsModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'NewsCommentsModel.freezed.dart';
part 'NewsCommentsModel.g.dart';

NewsCommentsModel newsCommentsModelFromJson(String str) =>
    NewsCommentsModel.fromJson(json.decode(str));

String newsCommentsModelToJson(NewsCommentsModel data) =>
    json.encode(data.toJson());

@freezed
abstract class NewsCommentsModel with _$NewsCommentsModel {
  const factory NewsCommentsModel({
    required List<Datum>? data,
    required Links? links,
    required Meta? meta,
  }) = _NewsCommentsModel;

  factory NewsCommentsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsCommentsModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? comment,
    required String? commenter_name,
    required String? commenter_username,
    required int? replies_count,
    required String? commenter_image,
    required DateTime? created_at,
    required String? ommenter_image,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
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
