// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RadiosModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RadiosModel _$_$_RadiosModelFromJson(Map<String, dynamic> json) {
  return _$_RadiosModel(
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

Map<String, dynamic> _$_$_RadiosModelToJson(_$_RadiosModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    name: json['name'] as String?,
    frequency: json['frequency'] as String?,
    slug: json['slug'] as String?,
    old_logo: json['old_logo'] as String?,
    link: json['link'] as String?,
    live_link: json['live_link'] as String?,
    content: json['content'] as String?,
    status: json['status'] as int?,
    publisher: json['publisher'] == null
        ? null
        : Publisher.fromJson(json['publisher'] as Map<String, dynamic>),
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'frequency': instance.frequency,
      'slug': instance.slug,
      'old_logo': instance.old_logo,
      'link': instance.link,
      'live_link': instance.live_link,
      'content': instance.content,
      'status': instance.status,
      'publisher': instance.publisher,
      'created_at': instance.created_at?.toIso8601String(),
    };

_$_Publisher _$_$_PublisherFromJson(Map<String, dynamic> json) {
  return _$_Publisher(
    id: json['id'] as int?,
    name: json['name'] as String?,
    name_np: json['name_np'] as String?,
    old_photo: json['old_photo'] as String?,
    mobile: json['mobile'] as String?,
    address: json['address'] as String?,
    email: json['email'] as String?,
    status: json['status'] as int?,
    featured: json['featured'] as int?,
    organization_id: json['organization_id'] as int?,
    name_combined: json['name_combined'] as String?,
    gender: json['gender'] as int?,
    role: json['role'] as String?,
    username: json['username'] as String?,
    created_at: json['created_at'] as String?,
  );
}

Map<String, dynamic> _$_$_PublisherToJson(_$_Publisher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_np': instance.name_np,
      'old_photo': instance.old_photo,
      'mobile': instance.mobile,
      'address': instance.address,
      'email': instance.email,
      'status': instance.status,
      'featured': instance.featured,
      'organization_id': instance.organization_id,
      'name_combined': instance.name_combined,
      'gender': instance.gender,
      'role': instance.role,
      'username': instance.username,
      'created_at': instance.created_at,
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
