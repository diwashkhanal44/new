// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LanguageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageModel _$_$_LanguageModelFromJson(Map<String, dynamic> json) {
  return _$_LanguageModel(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LanguageModelToJson(_$_LanguageModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    name: json['name'] as String?,
    language_code: json['language_code'] as String?,
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language_code': instance.language_code,
    };
