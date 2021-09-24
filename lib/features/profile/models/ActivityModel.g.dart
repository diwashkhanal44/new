// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ActivityModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityModel _$_$_ActivityModelFromJson(Map<String, dynamic> json) {
  return _$_ActivityModel(
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

Map<String, dynamic> _$_$_ActivityModelToJson(_$_ActivityModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    log_name: json['log_name'] as String?,
    description: json['description'] as String?,
    ip: json['ip'] as String?,
    agent: json['agent'] as String?,
    properties: json['properties'] == null
        ? null
        : Properties.fromJson(json['properties'] as Map<String, dynamic>),
    causer: json['causer'] == null
        ? null
        : Causer.fromJson(json['causer'] as Map<String, dynamic>),
    causer_type: json['causer_type'] as String?,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'log_name': instance.log_name,
      'description': instance.description,
      'ip': instance.ip,
      'agent': instance.agent,
      'properties': instance.properties,
      'causer': instance.causer,
      'causer_type': instance.causer_type,
      'created_at': instance.created_at?.toIso8601String(),
    };

_$_Causer _$_$_CauserFromJson(Map<String, dynamic> json) {
  return _$_Causer(
    id: json['id'] as int?,
    name_final: json['name_final'] as String?,
    value: json['value'] as int?,
    email: json['email'] as String?,
    mobile: json['mobile'] as String?,
    username: json['username'] as String?,
    roles: (json['roles'] as List<dynamic>?)
        ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CauserToJson(_$_Causer instance) => <String, dynamic>{
      'id': instance.id,
      'name_final': instance.name_final,
      'value': instance.value,
      'email': instance.email,
      'mobile': instance.mobile,
      'username': instance.username,
      'roles': instance.roles,
    };

_$_Role _$_$_RoleFromJson(Map<String, dynamic> json) {
  return _$_Role(
    id: json['id'] as int?,
    display_name: json['display_name'] as String?,
    display_name_np: json['display_name_np'] as String?,
    name_final: json['name_final'] as String?,
    name_combined: json['name_combined'] as String?,
    name: json['name'] as String?,
    guard_name: json['guard_name'] as String?,
    is_for_office: json['is_for_office'] as int?,
  );
}

Map<String, dynamic> _$_$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'id': instance.id,
      'display_name': instance.display_name,
      'display_name_np': instance.display_name_np,
      'name_final': instance.name_final,
      'name_combined': instance.name_combined,
      'name': instance.name,
      'guard_name': instance.guard_name,
      'is_for_office': instance.is_for_office,
    };

_$_Properties _$_$_PropertiesFromJson(Map<String, dynamic> json) {
  return _$_Properties(
    old: json['old'] == null
        ? null
        : Old.fromJson(json['old'] as Map<String, dynamic>),
    attributes: json['attributes'] == null
        ? null
        : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PropertiesToJson(_$_Properties instance) =>
    <String, dynamic>{
      'old': instance.old,
      'attributes': instance.attributes,
    };

_$_Attributes _$_$_AttributesFromJson(Map<String, dynamic> json) {
  return _$_Attributes(
    name: json['name'] as String?,
    email: json['email'] as String?,
    mobile: json['mobile'] as String?,
    name_np: json['name_np'] as String?,
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    id: json['id'] as int?,
    comment: json['comment'] as String?,
    news_id: json['news_id'] as int?,
    reply_id: json['reply_id'] as int?,
    parent_id: json['parent_id'] as int?,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    deleted_at: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
    publisher_id: json['publisher_id'] as int?,
  );
}

Map<String, dynamic> _$_$_AttributesToJson(_$_Attributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'name_np': instance.name_np,
      'updated_at': instance.updated_at?.toIso8601String(),
      'id': instance.id,
      'comment': instance.comment,
      'news_id': instance.news_id,
      'reply_id': instance.reply_id,
      'parent_id': instance.parent_id,
      'created_at': instance.created_at?.toIso8601String(),
      'deleted_at': instance.deleted_at?.toIso8601String(),
      'publisher_id': instance.publisher_id,
    };

_$_Old _$_$_OldFromJson(Map<String, dynamic> json) {
  return _$_Old(
    name: json['name'] as String?,
    email: json['email'] as String?,
    mobile: json['mobile'] as String?,
    name_np: json['name_np'] as String?,
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$_$_OldToJson(_$_Old instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'name_np': instance.name_np,
      'updated_at': instance.updated_at?.toIso8601String(),
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
