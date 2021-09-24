// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SingleNewsDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleNewsDetails _$_$_SingleNewsDetailsFromJson(Map<String, dynamic> json) {
  return _$_SingleNewsDetails(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SingleNewsDetailsToJson(
        _$_SingleNewsDetails instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    id: json['id'] as int?,
    title: json['title'] as String?,
    link: json['link'] as String?,
    meta_description: json['meta_description'] as String?,
    image: json['image'] as String?,
    views: json['views'] as int?,
    clicks: json['clicks'] as int?,
    reactions: json['reactions'] == null
        ? null
        : Reactions.fromJson(json['reactions'] as Map<String, dynamic>),
    content: json['content'] as String?,
    source: json['source'] as String?,
    source_logo: json['source_logo'] as String?,
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList(),
    created_at: json['created_at'] as String?,
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'meta_description': instance.meta_description,
      'image': instance.image,
      'views': instance.views,
      'clicks': instance.clicks,
      'reactions': instance.reactions,
      'content': instance.content,
      'source': instance.source,
      'source_logo': instance.source_logo,
      'categories': instance.categories,
      'created_at': instance.created_at,
    };
