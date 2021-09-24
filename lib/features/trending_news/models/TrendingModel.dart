// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final trendingModel = trendingModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:you/features/latest_news/models/NewsModel.dart';

part 'TrendingModel.freezed.dart';
part 'TrendingModel.g.dart';

TrendingModel trendingModelFromJson(String str) =>
    TrendingModel.fromJson(json.decode(str));

String trendingModelToJson(TrendingModel data) => json.encode(data.toJson());

@freezed
abstract class TrendingModel with _$TrendingModel {
  const factory TrendingModel({
    required List<Datum>? data,
  }) = _TrendingModel;

  factory TrendingModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingModelFromJson(json);
}
