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
  };

  static String convert(int number) {
    if (number < 0) {
      return 'نێگەتیڤ ${convert(-number)}';
    }

    if (number < 10) return _units[number]!;
    if (number < 100) return _convertTens(number);
    if (number < 1000) return _convertHundreds(number);

    if (number < 1000000) {
      return _convertLargeNumber(number, 1000, _thousands[1000]!);
    }

    if (number < 1000000000) {
      return _convertLargeNumber(number, 1000000, _thousands[1000000]!);
    }

    return _convertLargeNumber(number, 1000000000, _thousands[1000000000]!);
  }

  static String _convertTens(int number) {
    if (_tens.containsKey(number)) {
      return _tens[number]!;
    }
    return '${_tens[(number ~/ 10) * 10]!} و ${_units[number % 10]!}';
  }

  static String _convertHundreds(int number) {
    if (_hundreds.containsKey(number)) {
      return _hundreds[number]!;
    }
    return '${_hundreds[(number ~/ 100) * 100]!} و ${convert(number % 100)}';
  }

  static String _convertLargeNumber(
    int number,
    int divisor,
    String denomination,
  ) {
    int wholePart = number ~/ divisor;
    int remainder = number % divisor;

    String result = '${convert(wholePart)} $denomination';
    if (remainder > 0) {
      result = '$result و ${convert(remainder)}';
    }
    return result;
  }
}
