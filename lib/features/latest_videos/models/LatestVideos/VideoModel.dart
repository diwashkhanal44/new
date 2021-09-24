// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final videoModel = videoModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'VideoModel.freezed.dart';
part 'VideoModel.g.dart';

VideoModel videoModelFromJson(String str) =>
    VideoModel.fromJson(json.decode(str));

String videoModelToJson(VideoModel data) => json.encode(data.toJson());

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    required List<Datum>? data,
    required Links? links,
    required Meta? meta,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? name,
    required String? slug,
    required String? meta_description,
    required String? image,
    required String? video_id,
    required String? source,
    required String? video_link,
    required String? content,
    required int? language_id,
    required List<Category>? categories,
    required int? publisher_id,
    required Publisher? publisher,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int? id,
    required String? name,
    required String? language,
    required int? language_id,
    required int? newsCount,
    required String? slug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
abstract class Publisher with _$Publisher {
  const factory Publisher({
    required int? id,
    required String? name,
    required int? followers_count,
    required int? news_count,
    required String? link,
    required String? logo,
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
