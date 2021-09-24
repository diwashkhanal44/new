part of 'weather_cubit.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.loaded(
      {required String city,
      required double temp,
      required IconData icon}) = _Loaded;

  const factory WeatherState.failed({required String failureMessage}) = _Failed;
}
