import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:haversine_distance/haversine_distance.dart' as hd;
import 'package:location/location.dart';
import 'package:logging/logging.dart';
import 'package:you/features/weather/models/WeatherModel.dart';
import 'package:you/features/weather/repositories/weather_repositories.dart';
part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepositories _repositories;
  final Logger _logger = Logger("WeatherCubit");

  WeatherCubit({required WeatherRepositories weatherRepositories})
      : _repositories = weatherRepositories,
        super(WeatherState.initial());

  fetch() async {
    _logger.info("getting weather");

    final currentLocation = await location();
    if (currentLocation != null) {
      emit(WeatherState.loading());
      final weatherResponses = await _repositories.getTheWeather();

      weatherResponses.fold(
          (l) => emit(WeatherState.failed(failureMessage: l.failureMessage)),
          (r) {
        final startCoordinate =
            hd.Location(currentLocation.latitude!, currentLocation.longitude!);

        final haversineDistance = hd.HaversineDistance();

        int? distance;

        ListElement? city;

        r.list?.forEach((element) {
          final endCoordinate =
              hd.Location(element.coord!.lat!, element.coord!.lon!);

          final newDistance = haversineDistance
              .haversine(startCoordinate, endCoordinate, hd.Unit.KM)
              .floor();

          if (distance == null) {
            city = element;
            distance = newDistance;
          } else if (newDistance < distance!) {
            city = element;
            distance = newDistance;
          }
        });

        if (city != null)
          emit(WeatherState.loaded(
              city: city!.name!,
              temp: city!.main!.temp!,
              icon: getWeatherIcon(city!.weather!.first.id!)));
      });

      weatherResponses.fold((l) => _logger.severe(l.failureMessage),
          (r) => _logger.fine("Weather loaded"));
    } else {
      _logger.warning("Location Permission not granted");
      emit(WeatherState.failed(
          failureMessage: "Location Permission not granted"));
    }
  }

  Future<LocationData?> location() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    return await location.getLocation();
  }

  IconData getWeatherIcon(int condition) {
    if (condition < 300) {
      return Meteocons.cloud_flash_alt;
    } else if (condition < 400) {
      return Meteocons.drizzle;
    } else if (condition < 600) {
      return Meteocons.windy_rain;
    } else if (condition < 700) {
      return Meteocons.snow_alt;
    } else if (condition < 800) {
      return Meteocons.fog_cloud;
    } else if (condition == 800) {
      return Meteocons.sun;
    } else if (condition <= 804) {
      return Meteocons.clouds;
    } else
      return Meteocons.cloud_sun_inv;
  }
}
