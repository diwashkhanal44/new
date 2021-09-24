// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final metalForexModel = metalForexModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'MetalForexModel.freezed.dart';
part 'MetalForexModel.g.dart';

MetalForexModel metalForexModelFromJson(String str) =>
    MetalForexModel.fromJson(json.decode(str));

String metalForexModelToJson(MetalForexModel data) =>
    json.encode(data.toJson());

@freezed
abstract class MetalForexModel with _$MetalForexModel {
  const factory MetalForexModel({
    required int? id,
    required DateTime? date,
    required Data? data,
    required String? source_name,
    required String? source_url,
    required DateTime? created_at,
    required DateTime? updated_at,
    required DateTime? deleted_at,
  }) = _MetalForexModel;

  factory MetalForexModel.fromJson(Map<String, dynamic> json) =>
      _$MetalForexModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required Gram? gram,
    required Gram? tola,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Gram with _$Gram {
  const factory Gram({
    required String? silver,
    required String? finegold,
    required String? tejabigold,
  }) = _Gram;

  factory Gram.fromJson(Map<String, dynamic> json) => _$GramFromJson(json);
}
