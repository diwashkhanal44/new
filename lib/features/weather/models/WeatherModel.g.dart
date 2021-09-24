// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WeatherModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$_$_WeatherModelFromJson(Map<String, dynamic> json) {
  return _$_WeatherModel(
    message: json['message'] as String?,
    cod: json['cod'] as String?,
    count: json['count'] as int?,
    list: (json['list'] as List<dynamic>?)
        ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'cod': instance.cod,
      'count': instance.count,
      'list': instance.list,
    };

_$_ListElement _$_$_ListElementFromJson(Map<String, dynamic> json) {
  return _$_ListElement(
    id: json['id'] as int?,
    name: json['name'] as String?,
    coord: json['coord'] == null
        ? null
        : Coord.fromJson(json['coord'] as Map<String, dynamic>),
    main: json['main'] == null
        ? null
        : Main.fromJson(json['main'] as Map<String, dynamic>),
    dt: json['dt'] as int?,
    wind: json['wind'] == null
        ? null
        : Wind.fromJson(json['wind'] as Map<String, dynamic>),
    sys: json['sys'] == null
        ? null
        : Sys.fromJson(json['sys'] as Map<String, dynamic>),
    rain: json['rain'] == null
        ? null
        : Rain.fromJson(json['rain'] as Map<String, dynamic>),
    snow: json['snow'] == null
        ? null
        : Snow.fromJson(json['snow'] as Map<String, dynamic>),
    clouds: json['clouds'] == null
        ? null
        : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
    weather: (json['weather'] as List<dynamic>?)
        ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ListElementToJson(_$_ListElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'main': instance.main,
      'dt': instance.dt,
      'wind': instance.wind,
      'sys': instance.sys,
      'rain': instance.rain,
      'snow': instance.snow,
      'clouds': instance.clouds,
      'weather': instance.weather,
    };

_$_Clouds _$_$_CloudsFromJson(Map<String, dynamic> json) {
  return _$_Clouds(
    all: json['all'] as int?,
  );
}

Map<String, dynamic> _$_$_CloudsToJson(_$_Clouds instance) => <String, dynamic>{
      'all': instance.all,
    };

_$_Coord _$_$_CoordFromJson(Map<String, dynamic> json) {
  return _$_Coord(
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_CoordToJson(_$_Coord instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

_$_Main _$_$_MainFromJson(Map<String, dynamic> json) {
  return _$_Main(
    temp: (json['temp'] as num?)?.toDouble(),
    feels_like: (json['feels_like'] as num?)?.toDouble(),
    temp_min: (json['temp_min'] as num?)?.toDouble(),
    temp_max: (json['temp_max'] as num?)?.toDouble(),
    pressure: json['pressure'] as int?,
    humidity: json['humidity'] as int?,
  );
}

Map<String, dynamic> _$_$_MainToJson(_$_Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

_$_Rain _$_$_RainFromJson(Map<String, dynamic> json) {
  return _$_Rain(
    h: (json['h'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_RainToJson(_$_Rain instance) => <String, dynamic>{
      'h': instance.h,
    };

_$_Snow _$_$_SnowFromJson(Map<String, dynamic> json) {
  return _$_Snow();
}

Map<String, dynamic> _$_$_SnowToJson(_$_Snow instance) => <String, dynamic>{};

_$_Sys _$_$_SysFromJson(Map<String, dynamic> json) {
  return _$_Sys(
    country: json['country'] as String?,
  );
}

Map<String, dynamic> _$_$_SysToJson(_$_Sys instance) => <String, dynamic>{
      'country': instance.country,
    };

_$_Weather _$_$_WeatherFromJson(Map<String, dynamic> json) {
  return _$_Weather(
    id: json['id'] as int?,
    main: json['main'] as String?,
    description: json['description'] as String?,
    icon: json['icon'] as String?,
  );
}

Map<String, dynamic> _$_$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_Wind _$_$_WindFromJson(Map<String, dynamic> json) {
  return _$_Wind(
    speed: (json['speed'] as num?)?.toDouble(),
    deg: json['deg'] as int?,
  );
}

Map<String, dynamic> _$_$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };
