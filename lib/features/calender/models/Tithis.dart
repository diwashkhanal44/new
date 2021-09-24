import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'Tithis.freezed.dart';
part 'Tithis.g.dart';

Tithis tithisFromJson(String str) => Tithis.fromJson(json.decode(str));

String tithisToJson(Tithis data) => json.encode(data.toJson());

@freezed
abstract class Tithis with _$Tithis {
  const factory Tithis({
    required List<Datum>? data,
  }) = _Tithis;

  factory Tithis.fromJson(Map<String, dynamic> json) => _$TithisFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required String? date,
    required int? year,
    required int? month,
    required int? day,
    required String? lunar_day,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
