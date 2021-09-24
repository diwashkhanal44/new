import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'NewsCategory.freezed.dart';
part 'NewsCategory.g.dart';

NewsCategory newsCategoryFromJson(String str) =>
    NewsCategory.fromJson(json.decode(str));

String newsCategoryToJson(NewsCategory data) => json.encode(data.toJson());

@freezed
abstract class NewsCategory with _$NewsCategory {
  const factory NewsCategory({
    required List<Datum> data,
  }) = _NewsCategory;

  factory NewsCategory.fromJson(Map<String, dynamic> json) =>
      _$NewsCategoryFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? name,
    required String? name_np,
    required String? slug,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
