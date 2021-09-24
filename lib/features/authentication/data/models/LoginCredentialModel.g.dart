// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginCredentialModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginCredentialModel _$_$_LoginCredentialModelFromJson(
    Map<String, dynamic> json) {
  return _$_LoginCredentialModel(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LoginCredentialModelToJson(
        _$_LoginCredentialModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    accessToken: json['accessToken'] as String?,
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
    };
