// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsSourcesFollowed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsSourcesFollowed _$_$_NewsSourcesFollowedFromJson(
    Map<String, dynamic> json) {
  return _$_NewsSourcesFollowed(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_NewsSourcesFollowedToJson(
        _$_NewsSourcesFollowed instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    name: json['name'] as String?,
    followers_count: json['followers_count'] as int?,
    news_count: json['news_count'] as int?,
    link: json['link'] as String?,
    logo: json['logo'] as String?,
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'followers_count': instance.followers_count,
      'news_count': instance.news_count,
      'link': instance.link,
      'logo': instance.logo,
    };
