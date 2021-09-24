import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'NewsTopics.freezed.dart';
part 'NewsTopics.g.dart';

NewsTopics newsTopicsFromJson(String str) =>
    NewsTopics.fromJson(json.decode(str));

String newsTopicsToJson(NewsTopics data) => json.encode(data.toJson());

@freezed
abstract class NewsTopics with _$NewsTopics {
  const factory NewsTopics({
    required List<Datum>? data,
  }) = _NewsTopics;

  factory NewsTopics.fromJson(Map<String, dynamic> json) =>
      _$NewsTopicsFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? name,
    required String? language,
    required int? language_id,
    required int? newsCount,
    required String? slug,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
