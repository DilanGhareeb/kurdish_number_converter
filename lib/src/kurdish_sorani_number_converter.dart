library;

/// A utility class for converting numbers into Kurdish Sorani words.
class KurdishSoraniNumberConverter<T> {
  // Supported maximum value (2^63-1)
  static const int maxSupportedValue = 9223372036854775807;

  // Number component maps
  static const _units = {
    0: 'سفر',
    1: 'یەک',
    2: 'دوو',
    3: 'سێ',
    4: 'چوار',
    5: 'پێنج',
    6: 'شەش',
    7: 'حەوت',
    8: 'هەشت',
    9: 'نۆ',
  };

  static const _teens = {
    11: 'یازدە',
    12: 'دوازدە',
    13: 'سێزدە',
    14: 'چواردە',
    15: 'پازدە',
    16: 'شازدە',
    17: 'حەڤدە',
    18: 'هەژدە',
    19: 'نۆزدە',
  };

  static const _tens = {
    10: 'دە',
    20: 'بیست',
    30: 'سی',
    40: 'چل',
    50: 'پەنجا',
    60: 'شەست',
    70: 'حەفتا',
    80: 'هەشتا',
    90: 'نەوەد',
  };

  static const _hundreds = {
    100: 'سەد',
    200: 'دوو سەد',
    300: 'سێ سەد',
    400: 'چوار سەد',
    500: 'پێنج سەد',
    600: 'شەش سەد',
    700: 'حەوت سەد',
    800: 'هەشت سەد',
    900: 'نۆ سەد',
  };

  static const _scales = {
    1000: 'هەزار',
    1000000: 'ملیۆن',
    1000000000: 'ملیار',
    1000000000000: 'ترلیۆن',
    1000000000000000: 'کوادرلیۆن',
    1000000000000000000: 'کوینتیلیۆن',
  };

  /// Converts an [num] or [String] number into Kurdish Sorani words.
  ///
  /// Example:
  /// ```dart
  /// KurdishSoraniNumberConverter.convert(123); // => سەد و بیست و سێ
  /// ```
  static String convert<T extends num>(T number) {
    num numValue = number;

    // Handle numbers beyond supported range
    if (numValue > maxSupportedValue || numValue < -maxSupportedValue) {
      return 'ژمارە زۆر گەورەە و ناتوانرێت بگۆڕدرێت';
    }
    // Convert to int for processing (assuming you're working with integers)
    int intValue = numValue.round();

    if (intValue == 0) return _units[0]!;

    // Handle negative numbers
    if (numValue < 0) {
      return 'سالب ${convert(-numValue)}';
    }

    if (intValue < 10) return _units[intValue]!;
    if (_teens.containsKey(intValue)) return _teens[intValue]!;
    if (intValue < 100) return _convertTens(intValue);
    if (intValue < 1000) return _convertHundreds(intValue);

    final scale = _findLargestScale(intValue);
    return _convertComposite(intValue, scale, _scales[scale]!);
  }

  static int _findLargestScale(int number) {
    for (final scale in _scales.keys.toList().reversed) {
      if (number >= scale) return scale;
    }
    return 1000;
  }

  static String _convertTens(int number) {
    if (_tens.containsKey(number)) return _tens[number]!;
    final tens = (number ~/ 10) * 10;
    return '${_tens[tens]!} و ${_units[number % 10]!}';
  }

  static String _convertHundreds(int number) {
    if (_hundreds.containsKey(number)) return _hundreds[number]!;
    final hundreds = (number ~/ 100) * 100;
    return '${_hundreds[hundreds]!} و ${convert(number % 100)}';
  }

  static String _convertComposite(int number, int scale, String scaleName) {
    final whole = number ~/ scale;
    final remainder = number % scale;

    String wholePart = (whole >= 11 && whole <= 19)
        ? _teens[whole]!
        : convert(whole);

    var result = '$wholePart $scaleName';
    if (remainder > 0) {
      result = '$result و ${convert(remainder)}';
    }
    return result;
  }
}
