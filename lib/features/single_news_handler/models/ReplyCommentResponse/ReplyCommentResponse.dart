// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final replyCommentResponse = replyCommentResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ReplyCommentResponse.freezed.dart';
part 'ReplyCommentResponse.g.dart';

ReplyCommentResponse replyCommentResponseFromJson(String str) =>
    ReplyCommentResponse.fromJson(json.decode(str));

String replyCommentResponseToJson(ReplyCommentResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class ReplyCommentResponse with _$ReplyCommentResponse {
  const factory ReplyCommentResponse({
    required Data? data,
  }) = _ReplyCommentResponse;

  factory ReplyCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$ReplyCommentResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required int? id,
    required String? comment,
    required String? commenter_name,
    required int? replier_id,
    required String? commenter_image,
    required int? parent_id,
    required String? replyUser,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
