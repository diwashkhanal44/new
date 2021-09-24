// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Tithis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tithis _$_$_TithisFromJson(Map<String, dynamic> json) {
  return _$_Tithis(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TithisToJson(_$_Tithis instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    date: json['date'] as String?,
    year: json['year'] as int?,
    month: json['month'] as int?,
    day: json['day'] as int?,
    lunar_day: json['lunar_day'] as String?,
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'date': instance.date,
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'lunar_day': instance.lunar_day,
    };
