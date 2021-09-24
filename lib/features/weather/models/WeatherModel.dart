// ignore_for_file: non_constant_identifier_names
// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'WeatherModel.freezed.dart';
part 'WeatherModel.g.dart';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

@freezed
abstract class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required String? message,
    required String? cod,
    required int? count,
    required List<ListElement>? list,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
abstract class ListElement with _$ListElement {
  const factory ListElement({
    required int? id,
    required String? name,
    required Coord? coord,
    required Main? main,
    required int? dt,
    required Wind? wind,
    required Sys? sys,
    required Rain? rain,
    required Snow? snow,
    required Clouds? clouds,
    required List<Weather>? weather,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}

@freezed
abstract class Clouds with _$Clouds {
  const factory Clouds({
    required int? all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
abstract class Coord with _$Coord {
  const factory Coord({
    required double? lat,
    required double? lon,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
abstract class Main with _$Main {
  const factory Main({
    required double? temp,
    required double? feels_like,
    required double? temp_min,
    required double? temp_max,
    required int? pressure,
    required int? humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
abstract class Rain with _$Rain {
  const factory Rain({
    required double? h,
  }) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}

@freezed
abstract class Snow with _$Snow {
  const factory Snow() = _Snow;

  factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);
}

@freezed
abstract class Sys with _$Sys {
  const factory Sys({
    required String? country,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    required int? id,
    required String? main,
    required String? description,
    required String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
abstract class Wind with _$Wind {
  const factory Wind({
    required double? speed,
    required int? deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
