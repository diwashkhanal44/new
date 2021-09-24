import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'Units.freezed.dart';
part 'Units.g.dart';

Unit unitFromJson(String str) => Unit.fromJson(json.decode(str));

String unitToJson(Unit data) => json.encode(data.toJson());

@freezed
class Unit with _$Unit {
  factory Unit({
    final String? name,
    final double? conversion,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}
