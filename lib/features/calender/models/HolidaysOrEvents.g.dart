// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HolidaysOrEvents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HolidaysOrEvents _$_$_HolidaysOrEventsFromJson(Map<String, dynamic> json) {
  return _$_HolidaysOrEvents(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_HolidaysOrEventsToJson(
        _$_HolidaysOrEvents instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int?,
    name: json['name'] as String?,
    name_np: json['name_np'] as String?,
    summary: json['summary'] as String?,
    type: json['type'] as String?,
    month: json['month'] as int?,
    date: json['date'] as String?,
    parsedDate: json['parsedDate'] as String?,
    date_np: json['date_np'] as String?,
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_np': instance.name_np,
      'summary': instance.summary,
      'type': instance.type,
      'month': instance.month,
      'date': instance.date,
      'parsedDate': instance.parsedDate,
      'date_np': instance.date_np,
    };
