// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final radiosModel = radiosModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'RadiosModel.freezed.dart';
part 'RadiosModel.g.dart';

RadiosModel radiosModelFromJson(String str) =>
    RadiosModel.fromJson(json.decode(str));

String radiosModelToJson(RadiosModel data) => json.encode(data.toJson());

@freezed
abstract class RadiosModel with _$RadiosModel {
  const factory RadiosModel({
    required List<Datum>? data,
    required Links? links,
    required Meta? meta,
  }) = _RadiosModel;

  factory RadiosModel.fromJson(Map<String, dynamic> json) =>
      _$RadiosModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? name,
    required String? frequency,
    required String? slug,
    required String? old_logo,
    required String? link,
    required String? live_link,
    required String? content,
    required int? status,
    required Publisher? publisher,
    required DateTime? created_at,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class Publisher with _$Publisher {
  const factory Publisher({
    required int? id,
    required String? name,
    required String? name_np,
    required String? old_photo,
    required String? mobile,
    required String? address,
    required String? email,
    required int? status,
    required int? featured,
    required int? organization_id,
    required String? name_combined,
    required int? gender,
    required String? role,
    required String? username,
    required String? created_at,
  }) = _Publisher;

  factory Publisher.fromJson(Map<String, dynamic> json) =>
      _$PublisherFromJson(json);
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
