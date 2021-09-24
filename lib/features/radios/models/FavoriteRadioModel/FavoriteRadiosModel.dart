import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../RadiosModel.dart';

part 'FavoriteRadiosModel.freezed.dart';
part 'FavoriteRadiosModel.g.dart';

FavoriteRadiosModel favoriteRadiosModelFromJson(String str) =>
    FavoriteRadiosModel.fromJson(json.decode(str));

String favoriteRadiosModelToJson(FavoriteRadiosModel data) =>
    json.encode(data.toJson());

@freezed
abstract class FavoriteRadiosModel with _$FavoriteRadiosModel {
  const factory FavoriteRadiosModel({
    required List<Datum>? data,
  }) = _FavoriteRadiosModel;

  factory FavoriteRadiosModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteRadiosModelFromJson(json);
}
