// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final newsModel = latestNewsModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'NewsModel.freezed.dart';
part 'NewsModel.g.dart';

NewsModel latestNewsModelFromJson(String str) =>
    NewsModel.fromJson(json.decode(str));

String latestNewsModelToJson(NewsModel data) => json.encode(data.toJson());

@freezed
abstract class NewsModel with _$NewsModel {
  const factory NewsModel({
    required List<Datum>? data,
    required Links? links,
    required Meta? meta,
  }) = _LatestNewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int? id,
    required String? title,
    required String? link,
    required String? guid,
    required String? status,
    required String? meta_description,
    required String? image,
    required int? views,
    required int? clicks,
    required Reactions? reactions,
    required int? total_comments,
    required String? content,
    required Publisher? publisher,
    required int? language_id,
    required Language? language,
    required int? trend,
    required String? trend_name,
    required List<Category>? categories,
    required String? created_at,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class Language with _$Language {
  const factory Language({
    required int? id,
    required String? name,
    required String? language_code,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
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
abstract class Reactions with _$Reactions {
  const factory Reactions({
    required Reaction? reaction,
    required Actions? reactions,
    required Actions? ractions,
  }) = _Reactions;

  factory Reactions.fromJson(Map<String, dynamic> json) =>
      _$ReactionsFromJson(json);
}

@freezed
abstract class Actions with _$Actions {
  const factory Actions({
    required Angry? LIKE,
    required Angry? HAPPY,
    required Angry? WOW,
    required Angry? LOVE,
    required Angry? SAD,
    required Angry? ANGRY,
    required int? total,
  }) = _Actions;

  factory Actions.fromJson(Map<String, dynamic> json) =>
      _$ActionsFromJson(json);
}

@freezed
abstract class Angry with _$Angry {
  const factory Angry({
    required int? count,
    required double? percentage,
  }) = _Angry;

  factory Angry.fromJson(Map<String, dynamic> json) => _$AngryFromJson(json);
}

@freezed
abstract class Reaction with _$Reaction {
  const factory Reaction({
    required String? reaction,
    required int? reaction_id,
  }) = _Reaction;

  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);
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
    required List<LinkElement>? links,
    required String? path,
    required String? per_page,
    required int? to,
    required int? total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class LinkElement with _$LinkElement {
  const factory LinkElement({
    required String? url,
    required String? label,
    required bool? active,
  }) = _LinkElement;

  factory LinkElement.fromJson(Map<String, dynamic> json) =>
      _$LinkElementFromJson(json);
}
