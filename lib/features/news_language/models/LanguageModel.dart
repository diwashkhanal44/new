import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'LanguageModel.freezed.dart';
part 'LanguageModel.g.dart';

LanguageModel languageModelFromJson(String str) =>
    LanguageModel.fromJson(json.decode(str));

String languageModelToJson(LanguageModel data) => json.encode(data.toJson());

@freezed
abstract class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required List<Datum>? data,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? name,
    required String? language_code,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
