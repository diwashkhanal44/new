// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VideoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$_$_VideoModelFromJson(Map<String, dynamic> json) {
  return _$_VideoModel(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
    links: json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    name: json['name'] as String?,
    slug: json['slug'] as String?,
    meta_description: json['meta_description'] as String?,
    image: json['image'] as String?,
    video_id: json['video_id'] as String?,
    source: json['source'] as String?,
    video_link: json['video_link'] as String?,
    content: json['content'] as String?,
    language_id: json['language_id'] as int?,
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList(),
    publisher_id: json['publisher_id'] as int?,
    publisher: json['publisher'] == null
        ? null
        : Publisher.fromJson(json['publisher'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'meta_description': instance.meta_description,
      'image': instance.image,
      'video_id': instance.video_id,
      'source': instance.source,
      'video_link': instance.video_link,
      'content': instance.content,
      'language_id': instance.language_id,
      'categories': instance.categories,
      'publisher_id': instance.publisher_id,
      'publisher': instance.publisher,
    };

_$_Category _$_$_CategoryFromJson(Map<String, dynamic> json) {
  return _$_Category(
    id: json['id'] as int?,
    name: json['name'] as String?,
    language: json['language'] as String?,
    language_id: json['language_id'] as int?,
    newsCount: json['newsCount'] as int?,
    slug: json['slug'] as String?,
  );
}

Map<String, dynamic> _$_$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'language_id': instance.language_id,
      'newsCount': instance.newsCount,
      'slug': instance.slug,
    };

_$_Publisher _$_$_PublisherFromJson(Map<String, dynamic> json) {
  return _$_Publisher(
    id: json['id'] as int?,
    name: json['name'] as String?,
    followers_count: json['followers_count'] as int?,
    news_count: json['news_count'] as int?,
    link: json['link'] as String?,
    logo: json['logo'] as String?,
  );
}

Map<String, dynamic> _$_$_PublisherToJson(_$_Publisher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'followers_count': instance.followers_count,
      'news_count': instance.news_count,
      'link': instance.link,
      'logo': instance.logo,
    };

_$_Links _$_$_LinksFromJson(Map<String, dynamic> json) {
  return _$_Links(
    first: json['first'] as String?,
    last: json['last'] as String?,
    prev: json['prev'] as String?,
    next: json['next'] as String?,
  );
}

Map<String, dynamic> _$_$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

_$_Meta _$_$_MetaFromJson(Map<String, dynamic> json) {
  return _$_Meta(
    current_page: json['current_page'] as int?,
    from: json['from'] as int?,
    last_page: json['last_page'] as int?,
    links: (json['links'] as List<dynamic>?)
        ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
        .toList(),
    path: json['path'] as String?,
    per_page: json['per_page'] as String?,
    to: json['to'] as int?,
    total: json['total'] as int?,
  );
}

Map<String, dynamic> _$_$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'current_page': instance.current_page,
      'from': instance.from,
      'last_page': instance.last_page,
      'links': instance.links,
      'path': instance.path,
      'per_page': instance.per_page,
      'to': instance.to,
      'total': instance.total,
    };

_$_Link _$_$_LinkFromJson(Map<String, dynamic> json) {
  return _$_Link(
    url: json['url'] as String?,
    label: json['label'] as String?,
    active: json['active'] as bool?,
  );
}

Map<String, dynamic> _$_$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
