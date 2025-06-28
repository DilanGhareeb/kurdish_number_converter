class KurdishSoraniNumberConverter {
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
    200: 'دووسەد',
    300: 'سێسەد',
    400: 'چوارسەد',
    500: 'پێنسەد',
    600: 'شەشسەد',
    700: 'حەوتسەد',
    800: 'هەشتسەد',
    900: 'نۆسەد',
  };

  static const _scales = {
    1000: 'هەزار',
    1000000: 'ملیۆن',
    1000000000: 'ملیار',
    1000000000000: 'ترلیۆن',
    1000000000000000: 'کوادرلیۆن',
    1000000000000000000: 'کوینتیلیۆن',
  };

  static String convert(int number) {
    // Handle numbers beyond supported range
    if (number > maxSupportedValue || number < -maxSupportedValue) {
      return 'ژمارە زۆر گەورەە و ناتوانرێت بگۆڕدرێت';
    }

    if (number < 0) return 'سالب ${convert(-number)}';
    if (number < 10) return _units[number]!;
    if (_teens.containsKey(number)) return _teens[number]!;
    if (number < 100) return _convertTens(number);
    if (number < 1000) return _convertHundreds(number);

    final scale = _findLargestScale(number);
    return _convertComposite(number, scale, _scales[scale]!);
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
