// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestNewsModel _$_$_LatestNewsModelFromJson(Map<String, dynamic> json) {
  return _$_LatestNewsModel(
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

Map<String, dynamic> _$_$_LatestNewsModelToJson(_$_LatestNewsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    title: json['title'] as String?,
    link: json['link'] as String?,
    guid: json['guid'] as String?,
    status: json['status'] as String?,
    meta_description: json['meta_description'] as String?,
    image: json['image'] as String?,
    views: json['views'] as int?,
    clicks: json['clicks'] as int?,
    reactions: json['reactions'] == null
        ? null
        : Reactions.fromJson(json['reactions'] as Map<String, dynamic>),
    total_comments: json['total_comments'] as int?,
    content: json['content'] as String?,
    publisher: json['publisher'] == null
        ? null
        : Publisher.fromJson(json['publisher'] as Map<String, dynamic>),
    language_id: json['language_id'] as int?,
    language: json['language'] == null
        ? null
        : Language.fromJson(json['language'] as Map<String, dynamic>),
    trend: json['trend'] as int?,
    trend_name: json['trend_name'] as String?,
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList(),
    created_at: json['created_at'] as String?,
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'guid': instance.guid,
      'status': instance.status,
      'meta_description': instance.meta_description,
      'image': instance.image,
      'views': instance.views,
      'clicks': instance.clicks,
      'reactions': instance.reactions,
      'total_comments': instance.total_comments,
      'content': instance.content,
      'publisher': instance.publisher,
      'language_id': instance.language_id,
      'language': instance.language,
      'trend': instance.trend,
      'trend_name': instance.trend_name,
      'categories': instance.categories,
      'created_at': instance.created_at,
    };

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return _$_Language(
    id: json['id'] as int?,
    name: json['name'] as String?,
    language_code: json['language_code'] as String?,
  );
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language_code': instance.language_code,
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

_$_Reactions _$_$_ReactionsFromJson(Map<String, dynamic> json) {
  return _$_Reactions(
    reaction: json['reaction'] == null
        ? null
        : Reaction.fromJson(json['reaction'] as Map<String, dynamic>),
    reactions: json['reactions'] == null
        ? null
        : Actions.fromJson(json['reactions'] as Map<String, dynamic>),
    ractions: json['ractions'] == null
        ? null
        : Actions.fromJson(json['ractions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReactionsToJson(_$_Reactions instance) =>
    <String, dynamic>{
      'reaction': instance.reaction,
      'reactions': instance.reactions,
      'ractions': instance.ractions,
    };

_$_Actions _$_$_ActionsFromJson(Map<String, dynamic> json) {
  return _$_Actions(
    LIKE: json['LIKE'] == null
        ? null
        : Angry.fromJson(json['LIKE'] as Map<String, dynamic>),
    HAPPY: json['HAPPY'] == null
        ? null
        : Angry.fromJson(json['HAPPY'] as Map<String, dynamic>),
    WOW: json['WOW'] == null
        ? null
        : Angry.fromJson(json['WOW'] as Map<String, dynamic>),
    LOVE: json['LOVE'] == null
        ? null
        : Angry.fromJson(json['LOVE'] as Map<String, dynamic>),
    SAD: json['SAD'] == null
        ? null
        : Angry.fromJson(json['SAD'] as Map<String, dynamic>),
    ANGRY: json['ANGRY'] == null
        ? null
        : Angry.fromJson(json['ANGRY'] as Map<String, dynamic>),
    total: json['total'] as int?,
  );
}

Map<String, dynamic> _$_$_ActionsToJson(_$_Actions instance) =>
    <String, dynamic>{
      'LIKE': instance.LIKE,
      'HAPPY': instance.HAPPY,
      'WOW': instance.WOW,
      'LOVE': instance.LOVE,
      'SAD': instance.SAD,
      'ANGRY': instance.ANGRY,
      'total': instance.total,
    };

_$_Angry _$_$_AngryFromJson(Map<String, dynamic> json) {
  return _$_Angry(
    count: json['count'] as int?,
    percentage: (json['percentage'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_AngryToJson(_$_Angry instance) => <String, dynamic>{
      'count': instance.count,
      'percentage': instance.percentage,
    };

_$_Reaction _$_$_ReactionFromJson(Map<String, dynamic> json) {
  return _$_Reaction(
    reaction: json['reaction'] as String?,
    reaction_id: json['reaction_id'] as int?,
  );
}

Map<String, dynamic> _$_$_ReactionToJson(_$_Reaction instance) =>
    <String, dynamic>{
      'reaction': instance.reaction,
      'reaction_id': instance.reaction_id,
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
        ?.map((e) => LinkElement.fromJson(e as Map<String, dynamic>))
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

_$_LinkElement _$_$_LinkElementFromJson(Map<String, dynamic> json) {
  return _$_LinkElement(
    url: json['url'] as String?,
    label: json['label'] as String?,
    active: json['active'] as bool?,
  );
}

Map<String, dynamic> _$_$_LinkElementToJson(_$_LinkElement instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
