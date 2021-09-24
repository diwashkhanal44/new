// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UnitCategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$_$_CategoryFromJson(Map<String, dynamic> json) {
  return _$_Category(
    iconLocation: json['iconLocation'] as String,
    name: json['name'] as String,
    units: (json['units'] as List<dynamic>)
        .map((e) => Unit.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'iconLocation': instance.iconLocation,
      'name': instance.name,
      'units': instance.units,
    };
