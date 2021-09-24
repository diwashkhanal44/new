// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final holidaysOrEvents = holidaysOrEventsFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'HolidaysOrEvents.freezed.dart';
part 'HolidaysOrEvents.g.dart';

HolidaysOrEvents holidaysOrEventsFromJson(String str) =>
    HolidaysOrEvents.fromJson(json.decode(str));

String holidaysOrEventsToJson(HolidaysOrEvents data) =>
    json.encode(data.toJson());

@freezed
abstract class HolidaysOrEvents with _$HolidaysOrEvents {
  const factory HolidaysOrEvents({
    required List<Datum>? data,
  }) = _HolidaysOrEvents;

  factory HolidaysOrEvents.fromJson(Map<String, dynamic> json) =>
      _$HolidaysOrEventsFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? name,
    required String? name_np,
    required String? summary,
    required String? type,
    required int? month,
    required String? date,
    required String? parsedDate,
    required String? date_np,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
