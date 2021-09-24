// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsCommentRepliesModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsCommentRepliesModel _$_$_NewsCommentRepliesModelFromJson(
    Map<String, dynamic> json) {
  return _$_NewsCommentRepliesModel(
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

Map<String, dynamic> _$_$_NewsCommentRepliesModelToJson(
        _$_NewsCommentRepliesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    comment: json['comment'] as String?,
    commenter_name: json['commenter_name'] as String?,
    commenter_username: json['commenter_username'] as String?,
    replier_id: json['replier_id'] as int?,
    commenter_image: json['commenter_image'] as String?,
    parent_id: json['parent_id'] as int?,
    replyUser: json['replyUser'] as String?,
    replyUserName: json['replyUserName'] as String?,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'commenter_name': instance.commenter_name,
      'commenter_username': instance.commenter_username,
      'replier_id': instance.replier_id,
      'commenter_image': instance.commenter_image,
      'parent_id': instance.parent_id,
      'replyUser': instance.replyUser,
      'replyUserName': instance.replyUserName,
      'created_at': instance.created_at?.toIso8601String(),
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
