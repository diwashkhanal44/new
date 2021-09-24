import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'PublisherDetails.freezed.dart';
part 'PublisherDetails.g.dart';

PublisherDetails publisherDetailsFromJson(String str) =>
    PublisherDetails.fromJson(json.decode(str));

String publisherDetailsToJson(PublisherDetails data) =>
    json.encode(data.toJson());

@freezed
abstract class PublisherDetails with _$PublisherDetails {
  const factory PublisherDetails({
    required int? id,
    required String? name,
    required String? name_np,
    required String? contact_number,
    required String? contact_email,
    required String? address,
    required int? followers_count,
    required int? news_count,
    required String? content,
    required int? publisher_id,
    required String? logo,
  }) = _PublisherDetails;

  factory PublisherDetails.fromJson(Map<String, dynamic> json) =>
      _$PublisherDetailsFromJson(json);
}
