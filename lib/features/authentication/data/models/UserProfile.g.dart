// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserProfile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$_$_UserProfileFromJson(Map<String, dynamic> json) {
  return _$_UserProfile(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    id: json['id'] as int?,
    name: json['name'] as String?,
    name_np: json['name_np'] as String?,
    address: json['address'] as String?,
    name_final: json['name_final'] as String?,
    email: json['email'] as String?,
    name_combined: json['name_combined'] as String?,
    mobile: json['mobile'] as String?,
    gender: json['gender'] as int?,
    pwd_reset: json['pwd_reset'] as int?,
    label: json['label'] as String?,
    sources: (json['sources'] as List<dynamic>?)
        ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
        .toList(),
    profile_photo: json['profile_photo'] as String?,
    username: json['username'] as String?,
    roles: json['roles'] as int?,
    roleParsed: json['roleParsed'] == null
        ? null
        : RoleParsed.fromJson(json['roleParsed'] as Map<String, dynamic>),
    permissions: (json['permissions'] as List<dynamic>?)
        ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
        .toList(),
    created_at: json['created_at'] as String?,
    personalization: json['personalization'] == null
        ? null
        : Personalization.fromJson(
            json['personalization'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_np': instance.name_np,
      'address': instance.address,
      'name_final': instance.name_final,
      'email': instance.email,
      'name_combined': instance.name_combined,
      'mobile': instance.mobile,
      'gender': instance.gender,
      'pwd_reset': instance.pwd_reset,
      'label': instance.label,
      'sources': instance.sources,
      'profile_photo': instance.profile_photo,
      'username': instance.username,
      'roles': instance.roles,
      'roleParsed': instance.roleParsed,
      'permissions': instance.permissions,
      'created_at': instance.created_at,
      'personalization': instance.personalization,
    };

_$_Permission _$_$_PermissionFromJson(Map<String, dynamic> json) {
  return _$_Permission(
    id: json['id'] as int?,
    value: json['value'] as int?,
    name: json['name'] as String?,
    guard_name: json['guard_name'] as String?,
    group: json['group'] as String?,
    display_name: json['display_name'] as String?,
    name_final: json['name_final'] as String?,
    name_combined: json['name_combined'] as String?,
    label: json['label'] as String?,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_PermissionToJson(_$_Permission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'name': instance.name,
      'guard_name': instance.guard_name,
      'group': instance.group,
      'display_name': instance.display_name,
      'name_final': instance.name_final,
      'name_combined': instance.name_combined,
      'label': instance.label,
      'created_at': instance.created_at?.toIso8601String(),
    };

_$_Personalization _$_$_PersonalizationFromJson(Map<String, dynamic> json) {
  return _$_Personalization(
    language: json['language'],
    categories:
        (json['categories'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$_$_PersonalizationToJson(_$_Personalization instance) =>
    <String, dynamic>{
      'language': instance.language,
      'categories': instance.categories,
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

_$_RoleParsed _$_$_RoleParsedFromJson(Map<String, dynamic> json) {
  return _$_RoleParsed(
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

Map<String, dynamic> _$_$_RoleParsedToJson(_$_RoleParsed instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.display_name,
      'display_name_np': instance.display_name_np,
      'name_final': instance.name_final,
      'name_combined': instance.name_combined,
      'name': instance.name,
      'guard_name': instance.guard_name,
      'is_for_office': instance.is_for_office,
    };

_$_Source _$_$_SourceFromJson(Map<String, dynamic> json) {
  return _$_Source(
    asd: json['asd'] as String?,
  );
}

Map<String, dynamic> _$_$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'asd': instance.asd,
    };
