// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ToggleFavorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToggleFavorite _$_$_ToggleFavoriteFromJson(Map<String, dynamic> json) {
  return _$_ToggleFavorite(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$_$_ToggleFavoriteToJson(_$_ToggleFavorite instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    id: json['id'] as int?,
    name: json['name'] as String?,
    slug: json['slug'] as String?,
    old_logo: json['old_logo'] as String?,
    link: json['link'] as String?,
    live_link: json['live_link'] as String?,
    content: json['content'] as String?,
    frequency: json['frequency'] as String?,
    status: json['status'] as int?,
    publisher: json['publisher'] == null
        ? null
        : Publisher.fromJson(json['publisher'] as Map<String, dynamic>),
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'old_logo': instance.old_logo,
      'link': instance.link,
      'live_link': instance.live_link,
      'content': instance.content,
      'frequency': instance.frequency,
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
