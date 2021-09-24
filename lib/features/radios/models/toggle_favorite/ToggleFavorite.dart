// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final toggleFavorite = toggleFavoriteFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ToggleFavorite.freezed.dart';
part 'ToggleFavorite.g.dart';

ToggleFavorite toggleFavoriteFromJson(String str) =>
    ToggleFavorite.fromJson(json.decode(str));

String toggleFavoriteToJson(ToggleFavorite data) => json.encode(data.toJson());

@freezed
abstract class ToggleFavorite with _$ToggleFavorite {
  const factory ToggleFavorite({
    required Data? data,
    required String? message,
  }) = _ToggleFavorite;

  factory ToggleFavorite.fromJson(Map<String, dynamic> json) =>
      _$ToggleFavoriteFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required int? id,
    required String? name,
    required String? slug,
    required String? old_logo,
    required String? link,
    required String? live_link,
    required String? content,
    required String? frequency,
    required int? status,
    required Publisher? publisher,
    required DateTime? created_at,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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
