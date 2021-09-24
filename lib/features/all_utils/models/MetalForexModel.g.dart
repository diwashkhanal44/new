// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MetalForexModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetalForexModel _$_$_MetalForexModelFromJson(Map<String, dynamic> json) {
  return _$_MetalForexModel(
    id: json['id'] as int?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    source_name: json['source_name'] as String?,
    source_url: json['source_url'] as String?,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deleted_at: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_MetalForexModelToJson(_$_MetalForexModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'data': instance.data,
      'source_name': instance.source_name,
      'source_url': instance.source_url,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at?.toIso8601String(),
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    gram: json['gram'] == null
        ? null
        : Gram.fromJson(json['gram'] as Map<String, dynamic>),
    tola: json['tola'] == null
        ? null
        : Gram.fromJson(json['tola'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'gram': instance.gram,
      'tola': instance.tola,
    };

_$_Gram _$_$_GramFromJson(Map<String, dynamic> json) {
  return _$_Gram(
    silver: json['silver'] as String?,
    finegold: json['finegold'] as String?,
    tejabigold: json['tejabigold'] as String?,
  );
}

Map<String, dynamic> _$_$_GramToJson(_$_Gram instance) => <String, dynamic>{
      'silver': instance.silver,
      'finegold': instance.finegold,
      'tejabigold': instance.tejabigold,
    };
