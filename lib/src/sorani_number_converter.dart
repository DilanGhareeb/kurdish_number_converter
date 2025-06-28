class SoraniNumberConverter {
  static const Map<int, String> _units = {
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

  static const Map<int, String> _teens = {
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

  static const Map<int, String> _tens = {
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

  static const Map<int, String> _hundreds = {
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

  static const Map<int, String> _thousands = {
    1000: 'هەزار',
    1000000: 'ملیۆن',
    1000000000: 'ملیار',
    1000000000000: 'تریلیۆن',
  };

  static String convert(int number) {
    if (number < 0) {
      return 'سالب ${convert(-number)}';
    }

    if (number < 10) return _units[number]!;
    if (_teens.containsKey(number)) return _teens[number]!;
    if (number < 100) return _convertTens(number);
    if (number < 1000) return _convertHundreds(number);

    if (number < 1000000) {
      return _convertLargeNumber(number, 1000, _thousands[1000]!);
    }

    if (number < 1000000000) {
      return _convertLargeNumber(number, 1000000, _thousands[1000000]!);
    }

    if (number < 1000000000000) {
      return _convertLargeNumber(number, 1000000000, _thousands[1000000000]!);
    }

    return _convertLargeNumber(
      number,
      1000000000000,
      _thousands[1000000000000]!,
    );
  }

  static String _convertTens(int number) {
    if (_tens.containsKey(number)) {
      return _tens[number]!;
    }
    final tensPart = (number ~/ 10) * 10;
    final unitPart = number % 10;
    return '${_tens[tensPart]!} و ${_units[unitPart]!}';
  }

  static String _convertHundreds(int number) {
    if (_hundreds.containsKey(number)) {
      return _hundreds[number]!;
    }
    final hundredsPart = (number ~/ 100) * 100;
    final remainder = number % 100;
    return '${_hundreds[hundredsPart]!} و ${convert(remainder)}';
  }

  static String _convertLargeNumber(
    int number,
    int divisor,
    String denomination,
  ) {
    final wholePart = number ~/ divisor;
    final remainder = number % divisor;

    String wholePartStr;

    // Special handling for numbers 11-19 in higher magnitudes
    if (wholePart >= 11 && wholePart <= 19) {
      wholePartStr = _teens[wholePart]!;
    } else {
      wholePartStr = convert(wholePart);
    }

    String result = '$wholePartStr $denomination';
    if (remainder > 0) {
      result = '$result و ${convert(remainder)}';
    }
    return result;
  }

  static String _joinParts(String part1, String part2) {
    if (part1.isEmpty) return part2;
    if (part2.isEmpty) return part1;
    return '$part1 و $part2';
  }
}
