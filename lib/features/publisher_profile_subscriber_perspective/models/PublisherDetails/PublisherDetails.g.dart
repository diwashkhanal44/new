// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PublisherDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublisherDetails _$_$_PublisherDetailsFromJson(Map<String, dynamic> json) {
  return _$_PublisherDetails(
    id: json['id'] as int?,
    name: json['name'] as String?,
    name_np: json['name_np'] as String?,
    contact_number: json['contact_number'] as String?,
    contact_email: json['contact_email'] as String?,
    address: json['address'] as String?,
    followers_count: json['followers_count'] as int?,
    news_count: json['news_count'] as int?,
    content: json['content'] as String?,
    publisher_id: json['publisher_id'] as int?,
    logo: json['logo'] as String?,
  );
}

Map<String, dynamic> _$_$_PublisherDetailsToJson(
        _$_PublisherDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_np': instance.name_np,
      'contact_number': instance.contact_number,
      'contact_email': instance.contact_email,
      'address': instance.address,
      'followers_count': instance.followers_count,
      'news_count': instance.news_count,
      'content': instance.content,
      'publisher_id': instance.publisher_id,
      'logo': instance.logo,
    };
