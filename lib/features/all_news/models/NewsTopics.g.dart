// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsTopics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsTopics _$_$_NewsTopicsFromJson(Map<String, dynamic> json) {
  return _$_NewsTopics(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_NewsTopicsToJson(_$_NewsTopics instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    name: json['name'] as String?,
    language: json['language'] as String?,
    language_id: json['language_id'] as int?,
    newsCount: json['newsCount'] as int?,
    slug: json['slug'] as String?,
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'language_id': instance.language_id,
      'newsCount': instance.newsCount,
      'slug': instance.slug,
    };
