// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final newsSourcesFollowed = newsSourcesFollowedFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'NewsSourcesFollowed.freezed.dart';
part 'NewsSourcesFollowed.g.dart';

NewsSourcesFollowed newsSourcesFollowedFromJson(String str) =>
    NewsSourcesFollowed.fromJson(json.decode(str));

String newsSourcesFollowedToJson(NewsSourcesFollowed data) =>
    json.encode(data.toJson());

@freezed
class NewsSourcesFollowed with _$NewsSourcesFollowed {
  const factory NewsSourcesFollowed({
    required List<Datum>? data,
  }) = _NewsSourcesFollowed;

  factory NewsSourcesFollowed.fromJson(Map<String, dynamic> json) =>
      _$NewsSourcesFollowedFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? name,
    required int? followers_count,
    required int? news_count,
    required String? link,
    required String? logo,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
