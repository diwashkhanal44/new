// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsCategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsCategory _$_$_NewsCategoryFromJson(Map<String, dynamic> json) {
  return _$_NewsCategory(
    data: (json['data'] as List<dynamic>)
        .map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_NewsCategoryToJson(_$_NewsCategory instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    name: json['name'] as String?,
    name_np: json['name_np'] as String?,
    slug: json['slug'] as String?,
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_np': instance.name_np,
      'slug': instance.slug,
    };
