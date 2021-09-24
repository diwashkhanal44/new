import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:you/features/latest_news/models/NewsModel.dart';

part 'SingleNewsDetails.freezed.dart';
part 'SingleNewsDetails.g.dart';

SingleNewsDetails singleNewsDetailsFromJson(String str) =>
    SingleNewsDetails.fromJson(json.decode(str));

String singleNewsDetailsToJson(SingleNewsDetails data) =>
    json.encode(data.toJson());

@freezed
abstract class SingleNewsDetails with _$SingleNewsDetails {
  const factory SingleNewsDetails({
    required Data? data,
  }) = _SingleNewsDetails;

  factory SingleNewsDetails.fromJson(Map<String, dynamic> json) =>
      _$SingleNewsDetailsFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required int? id,
    required String? title,
    required String? link,
    required String? meta_description,
    required String? image,
    required int? views,
    required int? clicks,
    required Reactions? reactions,
    required String? content,
    required String? source,
    required String? source_logo,
    required List<Category>? categories,
    required String? created_at,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
