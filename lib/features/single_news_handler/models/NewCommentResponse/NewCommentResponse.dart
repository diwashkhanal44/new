// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final newCommentResponse = newCommentResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'NewCommentResponse.freezed.dart';
part 'NewCommentResponse.g.dart';

NewCommentResponse newCommentResponseFromJson(String str) =>
    NewCommentResponse.fromJson(json.decode(str));

String newCommentResponseToJson(NewCommentResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class NewCommentResponse with _$NewCommentResponse {
  const factory NewCommentResponse({
    required Data? data,
  }) = _NewCommentResponse;

  factory NewCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$NewCommentResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required int? id,
    required String? comment,
    required String? commenter_name,
    required int? replies_count,
    required String? commenter_image,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
