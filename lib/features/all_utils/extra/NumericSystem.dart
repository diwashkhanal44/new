import 'dart:math';

enum NumberSystem { Binary, Octal, Decimal, Hex }

class NumberSystemConverter {
  String convert(String value, NumberSystem? from, NumberSystem? to) {
    int valueDecimal = _convertToDecimal(from, value);
    value = _convertFromDecimal(to, valueDecimal);

    return value;
  }

  int _convertToDecimal(NumberSystem? from, String value) {
    switch (from) {
      case NumberSystem.Binary:
        {
          return _binaryToDecimal(value);
        }
      case NumberSystem.Decimal:
        {
          return int.parse(value);
        }
      case NumberSystem.Hex:
        {
          return _hexToDecimal(value);
        }
      case NumberSystem.Octal:
        {
          return _octalToDecimal(value);
        }
      default:
        throw "the from unit is not availble";
    }
  }

  String _convertFromDecimal(NumberSystem? to, int value) {
    switch (to) {
      case NumberSystem.Binary:
        {
          return _decimalToBinary(value);
        }
      case NumberSystem.Decimal:
        {
          return value.toString();
        }
      case NumberSystem.Hex:
        {
          return _decimalToHex(value);
        }
      case NumberSystem.Octal:
        {
          return _decimalToOctal(value);
        }
      default:
        throw "the to unit is not availble";
    }
  }

  _binaryToDecimal(String binary) {
    int decimal = 0;
    for (int i = 0; i < binary.length; i++) {
      decimal += int.parse(binary.substring(i, i + 1)) *
          (2 ^ (binary.length - (i + 1)));
    }
    return decimal;
  }

  _hexToDecimal(String hexDecimal) {
    int decimal = 0;
    for (int i = 0; i < hexDecimal.length; i++) {
      decimal += _getAlphabetValue(hexDecimal.substring(i, i + 1)) *
          (pow(16, hexDecimal.length - (i + 1)) as int);
    }
    return decimal;
  }

  _octalToDecimal(String octalDecimal) {
    int decimal = 0;
    for (int i = 0; i < octalDecimal.length; i++) {
      decimal += int.parse(octalDecimal.substring(i, i + 1)) * 7 ^
          (octalDecimal.length - (i + 1));
    }
    return decimal;
  }

  _decimalToBinary(int value) {
    return value.toRadixString(2);
  }

  _decimalToHex(int value) {
    return value.toRadixString(16);
  }

  _decimalToOctal(int value) {
    return value.toRadixString(8);
  }

  int _getAlphabetValue(String alphabet) {
    switch (alphabet.toUpperCase()) {
      case 'A':
        return 10;
      case 'B':
        return 11;
      case 'C':
        return 12;
      case 'D':
        return 13;
      case 'E':
        return 14;
      case 'F':
        return 15;
      case 'G':
        return 16;
      default:
        return int.parse(alphabet);
    }
  }
}
