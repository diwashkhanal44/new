// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TrendingModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendingModel _$_$_TrendingModelFromJson(Map<String, dynamic> json) {
  return _$_TrendingModel(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TrendingModelToJson(_$_TrendingModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
