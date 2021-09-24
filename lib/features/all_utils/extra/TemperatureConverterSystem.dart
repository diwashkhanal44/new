enum TemperatureUnit {
  Celsius,
  Delisle,
  Fahrenheit,
  Newton,
  Rankine,
  Reaumur,
  Romer,
  Kelvin,
}

/// Converter for temperature.
class TemperatureConverter {
  /// Returns the result after converting the `value` from type `from` to type `to`.
  ///
  /// If `from` and `to` are the same, returns the `value` itself.
  double convert(double value, TemperatureUnit from, TemperatureUnit to) {
    value = _convertToKelvin(from, value);
    value = _convertFromKelvin(to, value);
    return value;
  }

  /// Convert other unit to kelvin.
  double _convertToKelvin(TemperatureUnit from, double value) {
    switch (from) {
      case TemperatureUnit.Kelvin:
        return value;
      case TemperatureUnit.Celsius:
        return _celsiusToKelvin(value);
      case TemperatureUnit.Delisle:
        return 373.15 - (value * 2 / 3);
      case TemperatureUnit.Fahrenheit:
        return _celsiusToKelvin(_fahrenheitToCelsius(value));
      case TemperatureUnit.Newton:
        return _celsiusToKelvin(_newtonToCelsius(value));
      case TemperatureUnit.Rankine:
        return value * 5 / 9;
      case TemperatureUnit.Reaumur:
        return value * 5 / 4 + 273.15;
      case TemperatureUnit.Romer:
        return (value - 7.5) * 40 / 21 + 273.15;
    }
  }

  /// Convert kelvin to other units.
  double _convertFromKelvin(TemperatureUnit to, double value) {
    switch (to) {
      case TemperatureUnit.Kelvin:
        return value;
      case TemperatureUnit.Celsius:
        return _celsiusFromKelvin(value);
      case TemperatureUnit.Delisle:
        return (373.15 - value) * 3 / 2;
      case TemperatureUnit.Fahrenheit:
        return _fahrenheitFromCelsius(_celsiusFromKelvin(value));
      case TemperatureUnit.Newton:
        return _newtonFromCelsius(_celsiusFromKelvin(value));
      case TemperatureUnit.Rankine:
        return value * 9 / 5;
      case TemperatureUnit.Reaumur:
        return (value - 273.15) * 4 / 5;
      case TemperatureUnit.Romer:
        return (value - 273.15) * 21 / 40 + 7.5;
    }
  }

  /// Convert Celsius to Kelvin.
  double _celsiusToKelvin(double value) {
    return value + 273.15;
  }

  /// Convert Fahrenheit to Celsius.
  double _fahrenheitToCelsius(double value) {
    return (value - 32) * 5 / 9;
  }

  /// Convert Newton to Celsius.
  double _newtonToCelsius(double value) {
    return value / 0.33;
  }

  /// Convert Kelvin to Celsius.
  double _celsiusFromKelvin(double value) {
    return value - 273.15;
  }

  /// Convert Celsius to Fahrenheit.
  double _fahrenheitFromCelsius(double value) {
    return (value * 9 / 5) + 32;
  }

  /// Convert Celsius to Newton.
  double _newtonFromCelsius(double value) {
    return value * 0.33;
  }
}
