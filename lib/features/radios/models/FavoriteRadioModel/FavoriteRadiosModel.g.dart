// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FavoriteRadiosModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteRadiosModel _$_$_FavoriteRadiosModelFromJson(
    Map<String, dynamic> json) {
  return _$_FavoriteRadiosModel(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FavoriteRadiosModelToJson(
        _$_FavoriteRadiosModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
