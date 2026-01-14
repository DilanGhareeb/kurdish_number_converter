import 'package:flutter_test/flutter_test.dart';
import 'package:kurdish_number_converter/kurdish_number_converter.dart';

void main() {
  group('KurdishSoraniNumberConverter', () {
    group('Basic numbers (0-9)', () {
      final testCases = {
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

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Teens (11-19)', () {
      final testCases = {
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

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Tens (10, 20-99)', () {
      final testCases = {
        10: 'دە',
        20: 'بیست',
        21: 'بیست و یەک',
        22: 'بیست و دوو',
        23: 'بیست و سێ',
        24: 'بیست و چوار',
        25: 'بیست و پێنج',
        26: 'بیست و شەش',
        27: 'بیست و حەوت',
        28: 'بیست و هەشت',
        29: 'بیست و نۆ',
        30: 'سی',
        31: 'سی و یەک',
        32: 'سی و دوو',
        33: 'سی و سێ',
        34: 'سی و چوار',
        35: 'سی و پێنج',
        36: 'سی و شەش',
        37: 'سی و حەوت',
        38: 'سی و هەشت',
        39: 'سی و نۆ',
        40: 'چل',
        41: 'چل و یەک',
        42: 'چل و دوو',
        43: 'چل و سێ',
        44: 'چل و چوار',
        45: 'چل و پێنج',
        46: 'چل و شەش',
        47: 'چل و حەوت',
        48: 'چل و هەشت',
        49: 'چل و نۆ',
        50: 'پەنجا',
        51: 'پەنجا و یەک',
        52: 'پەنجا و دوو',
        53: 'پەنجا و سێ',
        54: 'پەنجا و چوار',
        55: 'پەنجا و پێنج',
        56: 'پەنجا و شەش',
        57: 'پەنجا و حەوت',
        58: 'پەنجا و هەشت',
        59: 'پەنجا و نۆ',
        60: 'شەست',
        61: 'شەست و یەک',
        62: 'شەست و دوو',
        63: 'شەست و سێ',
        64: 'شەست و چوار',
        65: 'شەست و پێنج',
        66: 'شەست و شەش',
        67: 'شەست و حەوت',
        68: 'شەست و هەشت',
        69: 'شەست و نۆ',
        70: 'حەفتا',
        71: 'حەفتا و یەک',
        72: 'حەفتا و دوو',
        73: 'حەفتا و سێ',
        74: 'حەفتا و چوار',
        75: 'حەفتا و پێنج',
        76: 'حەفتا و شەش',
        77: 'حەفتا و حەوت',
        78: 'حەفتا و هەشت',
        79: 'حەفتا و نۆ',
        80: 'هەشتا',
        81: 'هەشتا و یەک',
        82: 'هەشتا و دوو',
        83: 'هەشتا و سێ',
        84: 'هەشتا و چوار',
        85: 'هەشتا و پێنج',
        86: 'هەشتا و شەش',
        87: 'هەشتا و حەوت',
        88: 'هەشتا و هەشت',
        89: 'هەشتا و نۆ',
        90: 'نەوەد',
        91: 'نەوەد و یەک',
        92: 'نەوەد و دوو',
        93: 'نەوەد و سێ',
        94: 'نەوەد و چوار',
        95: 'نەوەد و پێنج',
        96: 'نەوەد و شەش',
        97: 'نەوەد و حەوت',
        98: 'نەوەد و هەشت',
        99: 'نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Hundreds (100-999)', () {
      final testCases = {
        100: 'سەد',
        101: 'سەد و یەک',
        102: 'سەد و دوو',
        103: 'سەد و سێ',
        104: 'سەد و چوار',
        105: 'سەد و پێنج',
        106: 'سەد و شەش',
        107: 'سەد و حەوت',
        108: 'سەد و هەشت',
        109: 'سەد و نۆ',
        110: 'سەد و دە',
        111: 'سەد و یازدە',
        112: 'سەد و دوازدە',
        113: 'سەد و سێزدە',
        114: 'سەد و چواردە',
        115: 'سەد و پازدە',
        116: 'سەد و شازدە',
        117: 'سەد و حەڤدە',
        118: 'سەد و هەژدە',
        119: 'سەد و نۆزدە',
        120: 'سەد و بیست',
        121: 'سەد و بیست و یەک',
        123: 'سەد و بیست و سێ',
        125: 'سەد و بیست و پێنج',
        130: 'سەد و سی',
        140: 'سەد و چل',
        150: 'سەد و پەنجا',
        160: 'سەد و شەست',
        170: 'سەد و حەفتا',
        180: 'سەد و هەشتا',
        190: 'سەد و نەوەد',
        199: 'سەد و نەوەد و نۆ',
        200: 'دوو سەد',
        201: 'دوو سەد و یەک',
        211: 'دوو سەد و یازدە',
        220: 'دوو سەد و بیست',
        250: 'دوو سەد و پەنجا',
        299: 'دوو سەد و نەوەد و نۆ',
        300: 'سێ سەد',
        301: 'سێ سەد و یەک',
        333: 'سێ سەد و سی و سێ',
        400: 'چوار سەد',
        404: 'چوار سەد و چوار',
        444: 'چوار سەد و چل و چوار',
        500: 'پێنج سەد',
        505: 'پێنج سەد و پێنج',
        555: 'پێنج سەد و پەنجا و پێنج',
        600: 'شەش سەد',
        606: 'شەش سەد و شەش',
        666: 'شەش سەد و شەست و شەش',
        700: 'حەوت سەد',
        707: 'حەوت سەد و حەوت',
        777: 'حەوت سەد و حەفتا و حەوت',
        800: 'هەشت سەد',
        808: 'هەشت سەد و هەشت',
        888: 'هەشت سەد و هەشتا و هەشت',
        900: 'نۆ سەد',
        909: 'نۆ سەد و نۆ',
        999: 'نۆ سەد و نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Thousands (1000-999999)', () {
      final testCases = {
        1000: 'یەک هەزار',
        1001: 'یەک هەزار و یەک',
        1002: 'یەک هەزار و دوو',
        1003: 'یەک هەزار و سێ',
        1004: 'یەک هەزار و چوار',
        1005: 'یەک هەزار و پێنج',
        1006: 'یەک هەزار و شەش',
        1007: 'یەک هەزار و حەوت',
        1008: 'یەک هەزار و هەشت',
        1009: 'یەک هەزار و نۆ',
        1010: 'یەک هەزار و دە',
        1011: 'یەک هەزار و یازدە',
        1020: 'یەک هەزار و بیست',
        1100: 'یەک هەزار و سەد',
        1111: 'یەک هەزار و سەد و یازدە',
        1234: 'یەک هەزار و دوو سەد و سی و چوار',
        1999: 'یەک هەزار و نۆ سەد و نەوەد و نۆ',
        2000: 'دوو هەزار',
        2001: 'دوو هەزار و یەک',
        2222: 'دوو هەزار و دوو سەد و بیست و دوو',
        2500: 'دوو هەزار و پێنج سەد',
        3000: 'سێ هەزار',
        3333: 'سێ هەزار و سێ سەد و سی و سێ',
        4000: 'چوار هەزار',
        4444: 'چوار هەزار و چوار سەد و چل و چوار',
        5000: 'پێنج هەزار',
        5555: 'پێنج هەزار و پێنج سەد و پەنجا و پێنج',
        6000: 'شەش هەزار',
        6666: 'شەش هەزار و شەش سەد و شەست و شەش',
        7000: 'حەوت هەزار',
        7777: 'حەوت هەزار و حەوت سەد و حەفتا و حەوت',
        8000: 'هەشت هەزار',
        8888: 'هەشت هەزار و هەشت سەد و هەشتا و هەشت',
        9000: 'نۆ هەزار',
        9999: 'نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        10000: 'دە هەزار',
        10001: 'دە هەزار و یەک',
        11000: 'یازدە هەزار',
        12000: 'دوازدە هەزار',
        12345: 'دوازدە هەزار و سێ سەد و چل و پێنج',
        15000: 'پازدە هەزار',
        20000: 'بیست هەزار',
        21000: 'بیست و یەک هەزار',
        25000: 'بیست و پێنج هەزار',
        30000: 'سی هەزار',
        40000: 'چل هەزار',
        50000: 'پەنجا هەزار',
        60000: 'شەست هەزار',
        70000: 'حەفتا هەزار',
        80000: 'هەشتا هەزار',
        90000: 'نەوەد هەزار',
        98765: 'نەوەد و هەشت هەزار و حەوت سەد و شەست و پێنج',
        99000: 'نەوەد و نۆ هەزار',
        99999: 'نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        100000: 'سەد هەزار',
        100001: 'سەد هەزار و یەک',
        111111: 'سەد و یازدە هەزار و سەد و یازدە',
        123456: 'سەد و بیست و سێ هەزار و چوار سەد و پەنجا و شەش',
        200000: 'دوو سەد هەزار',
        300000: 'سێ سەد هەزار',
        400000: 'چوار سەد هەزار',
        500000: 'پێنج سەد هەزار',
        600000: 'شەش سەد هەزار',
        700000: 'حەوت سەد هەزار',
        800000: 'هەشت سەد هەزار',
        900000: 'نۆ سەد هەزار',
        999999: 'نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Millions (1000000-999999999)', () {
      final testCases = {
        1000000: 'یەک ملیۆن',
        1000001: 'یەک ملیۆن و یەک',
        1000010: 'یەک ملیۆن و دە',
        1000100: 'یەک ملیۆن و سەد',
        1001000: 'یەک ملیۆن و یەک هەزار',
        1010000: 'یەک ملیۆن و دە هەزار',
        1100000: 'یەک ملیۆن و سەد هەزار',
        1111111: 'یەک ملیۆن و سەد و یازدە هەزار و سەد و یازدە',
        1234567:
            'یەک ملیۆن و دوو سەد و سی و چوار هەزار و پێنج سەد و شەست و حەوت',
        2000000: 'دوو ملیۆن',
        2222222:
            'دوو ملیۆن و دوو سەد و بیست و دوو هەزار و دوو سەد و بیست و دوو',
        3000000: 'سێ ملیۆن',
        3333333: 'سێ ملیۆن و سێ سەد و سی و سێ هەزار و سێ سەد و سی و سێ',
        4000000: 'چوار ملیۆن',
        5000000: 'پێنج ملیۆن',
        6000000: 'شەش ملیۆن',
        7000000: 'حەوت ملیۆن',
        8000000: 'هەشت ملیۆن',
        9000000: 'نۆ ملیۆن',
        9876543: 'نۆ ملیۆن و هەشت سەد و حەفتا و شەش هەزار و پێنج سەد و چل و سێ',
        10000000: 'دە ملیۆن',
        11000000: 'یازدە ملیۆن',
        12000000: 'دوازدە ملیۆن',
        12345678:
            'دوازدە ملیۆن و سێ سەد و چل و پێنج هەزار و شەش سەد و حەفتا و هەشت',
        15000000: 'پازدە ملیۆن',
        20000000: 'بیست ملیۆن',
        25000000: 'بیست و پێنج ملیۆن',
        50000000: 'پەنجا ملیۆن',
        75000000: 'حەفتا و پێنج ملیۆن',
        100000000: 'سەد ملیۆن',
        123456789:
            'سەد و بیست و سێ ملیۆن و چوار سەد و پەنجا و شەش هەزار و حەوت سەد و هەشتا و نۆ',
        500000000: 'پێنج سەد ملیۆن',
        999999999:
            'نۆ سەد و نەوەد و نۆ ملیۆن و نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Billions (1000000000+)', () {
      final testCases = {
        1000000000: 'یەک ملیار',
        1000000001: 'یەک ملیار و یەک',
        1000000010: 'یەک ملیار و دە',
        1000000100: 'یەک ملیار و سەد',
        1000001000: 'یەک ملیار و یەک هەزار',
        1000010000: 'یەک ملیار و دە هەزار',
        1000100000: 'یەک ملیار و سەد هەزار',
        1001000000: 'یەک ملیار و یەک ملیۆن',
        1010000000: 'یەک ملیار و دە ملیۆن',
        1100000000: 'یەک ملیار و سەد ملیۆن',
        1111111111:
            'یەک ملیار و سەد و یازدە ملیۆن و سەد و یازدە هەزار و سەد و یازدە',
        1234567890:
            'یەک ملیار و دوو سەد و سی و چوار ملیۆن و پێنج سەد و شەست و حەوت هەزار و هەشت سەد و نەوەد',
        2000000000: 'دوو ملیار',
        2147483647:
            'دوو ملیار و سەد و چل و حەوت ملیۆن و چوار سەد و هەشتا و سێ هەزار و شەش سەد و چل و حەوت',
        3000000000: 'سێ ملیار',
        4000000000: 'چوار ملیار',
        5000000000: 'پێنج ملیار',
        6000000000: 'شەش ملیار',
        7000000000: 'حەوت ملیار',
        8000000000: 'هەشت ملیار',
        9000000000: 'نۆ ملیار',
        9876543210:
            'نۆ ملیار و هەشت سەد و حەفتا و شەش ملیۆن و پێنج سەد و چل و سێ هەزار و دوو سەد و دە',
        10000000000: 'دە ملیار',
        11000000000: 'یازدە ملیار',
        12000000000: 'دوازدە ملیار',
        15000000000: 'پازدە ملیار',
        20000000000: 'بیست ملیار',
        25000000000: 'بیست و پێنج ملیار',
        50000000000: 'پەنجا ملیار',
        75000000000: 'حەفتا و پێنج ملیار',
        100000000000: 'سەد ملیار',
        123456789012:
            'سەد و بیست و سێ ملیار و چوار سەد و پەنجا و شەش ملیۆن و حەوت سەد و هەشتا و نۆ هەزار و دوازدە',
        500000000000: 'پێنج سەد ملیار',
        999999999999:
            'نۆ سەد و نەوەد و نۆ ملیار و نۆ سەد و نەوەد و نۆ ملیۆن و نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Trillions and beyond', () {
      final testCases = {
        1000000000000: 'یەک ترلیۆن',
        1000000000001: 'یەک ترلیۆن و یەک',
        1234567890123:
            'یەک ترلیۆن و دوو سەد و سی و چوار ملیار و پێنج سەد و شەست و حەوت ملیۆن و هەشت سەد و نەوەد هەزار و سەد و بیست و سێ',
        2000000000000: 'دوو ترلیۆن',
        5000000000000: 'پێنج ترلیۆن',
        9999999999999:
            'نۆ ترلیۆن و نۆ سەد و نەوەد و نۆ ملیار و نۆ سەد و نەوەد و نۆ ملیۆن و نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        1000000000000000: 'یەک کوادرلیۆن',
        1000000000000000000: 'یەک کوینتیلیۆن',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Negative numbers', () {
      final testCases = {
        -1: 'سالب یەک',
        -2: 'سالب دوو',
        -3: 'سالب سێ',
        -4: 'سالب چوار',
        -5: 'سالب پێنج',
        -6: 'سالب شەش',
        -7: 'سالب حەوت',
        -8: 'سالب هەشت',
        -9: 'سالب نۆ',
        -10: 'سالب دە',
        -11: 'سالب یازدە',
        -12: 'سالب دوازدە',
        -15: 'سالب پازدە',
        -20: 'سالب بیست',
        -21: 'سالب بیست و یەک',
        -25: 'سالب بیست و پێنج',
        -30: 'سالب سی',
        -50: 'سالب پەنجا',
        -75: 'سالب حەفتا و پێنج',
        -99: 'سالب نەوەد و نۆ',
        -100: 'سالب سەد',
        -101: 'سالب سەد و یەک',
        -123: 'سالب سەد و بیست و سێ',
        -500: 'سالب پێنج سەد',
        -999: 'سالب نۆ سەد و نەوەد و نۆ',
        -1000: 'سالب یەک هەزار',
        -1234: 'سالب یەک هەزار و دوو سەد و سی و چوار',
        -10000: 'سالب دە هەزار',
        -100000: 'سالب سەد هەزار',
        -999999: 'سالب نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        -1000000: 'سالب یەک ملیۆن',
        -1234567:
            'سالب یەک ملیۆن و دوو سەد و سی و چوار هەزار و پێنج سەد و شەست و حەوت',
        -10000000: 'سالب دە ملیۆن',
        -100000000: 'سالب سەد ملیۆن',
        -123456789:
            'سالب سەد و بیست و سێ ملیۆن و چوار سەد و پەنجا و شەش هەزار و حەوت سەد و هەشتا و نۆ',
        -1000000000: 'سالب یەک ملیار',
        -2147483647:
            'سالب دوو ملیار و سەد و چل و حەوت ملیۆن و چوار سەد و هەشتا و سێ هەزار و شەش سەد و چل و حەوت',
        -1000000000000: 'سالب یەک ترلیۆن',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(KurdishSoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Edge cases and boundary values', () {
      test('Zero variations', () {
        expect(KurdishSoraniNumberConverter.convert(0), 'سفر');
      });

      test('Single digit variations', () {
        for (int i = 0; i <= 9; i++) {
          expect(KurdishSoraniNumberConverter.convert(i), isNotEmpty);
        }
      });

      test('Boundary between tens and hundreds', () {
        expect(KurdishSoraniNumberConverter.convert(99), 'نەوەد و نۆ');
        expect(KurdishSoraniNumberConverter.convert(100), 'سەد');
        expect(KurdishSoraniNumberConverter.convert(101), 'سەد و یەک');
      });

      test('Boundary between hundreds and thousands', () {
        expect(
          KurdishSoraniNumberConverter.convert(999),
          'نۆ سەد و نەوەد و نۆ',
        );
        expect(KurdishSoraniNumberConverter.convert(1000), 'یەک هەزار');
        expect(KurdishSoraniNumberConverter.convert(1001), 'یەک هەزار و یەک');
      });

      test('Boundary between thousands and millions', () {
        expect(
          KurdishSoraniNumberConverter.convert(999999),
          'نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        );
        expect(KurdishSoraniNumberConverter.convert(1000000), 'یەک ملیۆن');
        expect(
          KurdishSoraniNumberConverter.convert(1000001),
          'یەک ملیۆن و یەک',
        );
      });

      test('Boundary between millions and billions', () {
        expect(
          KurdishSoraniNumberConverter.convert(999999999),
          'نۆ سەد و نەوەد و نۆ ملیۆن و نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        );
        expect(KurdishSoraniNumberConverter.convert(1000000000), 'یەک ملیار');
        expect(
          KurdishSoraniNumberConverter.convert(1000000001),
          'یەک ملیار و یەک',
        );
      });

      test('Boundary between billions and trillions', () {
        expect(
          KurdishSoraniNumberConverter.convert(999999999999),
          'نۆ سەد و نەوەد و نۆ ملیار و نۆ سەد و نەوەد و نۆ ملیۆن و نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1000000000000),
          'یەک ترلیۆن',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1000000000001),
          'یەک ترلیۆن و یەک',
        );
      });

      test('Large negative numbers', () {
        expect(
          KurdishSoraniNumberConverter.convert(-999999999),
          'سالب نۆ سەد و نەوەد و نۆ ملیۆن و نۆ سەد و نەوەد و نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        );
        expect(
          KurdishSoraniNumberConverter.convert(-1000000000),
          'سالب یەک ملیار',
        );
      });

      test('Powers of 10', () {
        expect(KurdishSoraniNumberConverter.convert(1), 'یەک');
        expect(KurdishSoraniNumberConverter.convert(10), 'دە');
        expect(KurdishSoraniNumberConverter.convert(100), 'سەد');
        expect(KurdishSoraniNumberConverter.convert(1000), 'یەک هەزار');
        expect(KurdishSoraniNumberConverter.convert(10000), 'دە هەزار');
        expect(KurdishSoraniNumberConverter.convert(100000), 'سەد هەزار');
        expect(KurdishSoraniNumberConverter.convert(1000000), 'یەک ملیۆن');
        expect(KurdishSoraniNumberConverter.convert(10000000), 'دە ملیۆن');
        expect(KurdishSoraniNumberConverter.convert(100000000), 'سەد ملیۆن');
        expect(KurdishSoraniNumberConverter.convert(1000000000), 'یەک ملیار');
        expect(KurdishSoraniNumberConverter.convert(10000000000), 'دە ملیار');
        expect(KurdishSoraniNumberConverter.convert(100000000000), 'سەد ملیار');
        expect(
          KurdishSoraniNumberConverter.convert(1000000000000),
          'یەک ترلیۆن',
        );
      });

      test('Repeating digits', () {
        expect(KurdishSoraniNumberConverter.convert(11), 'یازدە');
        expect(KurdishSoraniNumberConverter.convert(22), 'بیست و دوو');
        expect(KurdishSoraniNumberConverter.convert(33), 'سی و سێ');
        expect(KurdishSoraniNumberConverter.convert(44), 'چل و چوار');
        expect(KurdishSoraniNumberConverter.convert(55), 'پەنجا و پێنج');
        expect(KurdishSoraniNumberConverter.convert(66), 'شەست و شەش');
        expect(KurdishSoraniNumberConverter.convert(77), 'حەفتا و حەوت');
        expect(KurdishSoraniNumberConverter.convert(88), 'هەشتا و هەشت');
        expect(KurdishSoraniNumberConverter.convert(99), 'نەوەد و نۆ');
        expect(KurdishSoraniNumberConverter.convert(111), 'سەد و یازدە');
        expect(
          KurdishSoraniNumberConverter.convert(222),
          'دوو سەد و بیست و دوو',
        );
        expect(KurdishSoraniNumberConverter.convert(333), 'سێ سەد و سی و سێ');
        expect(
          KurdishSoraniNumberConverter.convert(444),
          'چوار سەد و چل و چوار',
        );
        expect(
          KurdishSoraniNumberConverter.convert(555),
          'پێنج سەد و پەنجا و پێنج',
        );
        expect(
          KurdishSoraniNumberConverter.convert(666),
          'شەش سەد و شەست و شەش',
        );
        expect(
          KurdishSoraniNumberConverter.convert(777),
          'حەوت سەد و حەفتا و حەوت',
        );
        expect(
          KurdishSoraniNumberConverter.convert(888),
          'هەشت سەد و هەشتا و هەشت',
        );
        expect(
          KurdishSoraniNumberConverter.convert(999),
          'نۆ سەد و نەوەد و نۆ',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1111),
          'یەک هەزار و سەد و یازدە',
        );
        expect(
          KurdishSoraniNumberConverter.convert(2222),
          'دوو هەزار و دوو سەد و بیست و دوو',
        );
        expect(
          KurdishSoraniNumberConverter.convert(3333),
          'سێ هەزار و سێ سەد و سی و سێ',
        );
        expect(
          KurdishSoraniNumberConverter.convert(4444),
          'چوار هەزار و چوار سەد و چل و چوار',
        );
        expect(
          KurdishSoraniNumberConverter.convert(5555),
          'پێنج هەزار و پێنج سەد و پەنجا و پێنج',
        );
        expect(
          KurdishSoraniNumberConverter.convert(6666),
          'شەش هەزار و شەش سەد و شەست و شەش',
        );
        expect(
          KurdishSoraniNumberConverter.convert(7777),
          'حەوت هەزار و حەوت سەد و حەفتا و حەوت',
        );
        expect(
          KurdishSoraniNumberConverter.convert(8888),
          'هەشت هەزار و هەشت سەد و هەشتا و هەشت',
        );
        expect(
          KurdishSoraniNumberConverter.convert(9999),
          'نۆ هەزار و نۆ سەد و نەوەد و نۆ',
        );
      });

      test('Numbers with zeros in middle', () {
        expect(KurdishSoraniNumberConverter.convert(101), 'سەد و یەک');
        expect(KurdishSoraniNumberConverter.convert(1001), 'یەک هەزار و یەک');
        expect(KurdishSoraniNumberConverter.convert(1010), 'یەک هەزار و دە');
        expect(KurdishSoraniNumberConverter.convert(1100), 'یەک هەزار و سەد');
        expect(KurdishSoraniNumberConverter.convert(10001), 'دە هەزار و یەک');
        expect(KurdishSoraniNumberConverter.convert(10010), 'دە هەزار و دە');
        expect(KurdishSoraniNumberConverter.convert(10100), 'دە هەزار و سەد');
        expect(KurdishSoraniNumberConverter.convert(11000), 'یازدە هەزار');
        expect(KurdishSoraniNumberConverter.convert(100001), 'سەد هەزار و یەک');
        expect(KurdishSoraniNumberConverter.convert(100010), 'سەد هەزار و دە');
        expect(KurdishSoraniNumberConverter.convert(100100), 'سەد هەزار و سەد');
        expect(KurdishSoraniNumberConverter.convert(101000), 'سەد و یەک هەزار');
        expect(KurdishSoraniNumberConverter.convert(110000), 'سەد و دە هەزار');
        expect(
          KurdishSoraniNumberConverter.convert(1000001),
          'یەک ملیۆن و یەک',
        );
        expect(KurdishSoraniNumberConverter.convert(1000010), 'یەک ملیۆن و دە');
        expect(
          KurdishSoraniNumberConverter.convert(1000100),
          'یەک ملیۆن و سەد',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1001000),
          'یەک ملیۆن و یەک هەزار',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1010000),
          'یەک ملیۆن و دە هەزار',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1100000),
          'یەک ملیۆن و سەد هەزار',
        );
      });
    });

    group('Special pattern numbers', () {
      test('Sequential numbers', () {
        expect(KurdishSoraniNumberConverter.convert(123), 'سەد و بیست و سێ');
        expect(
          KurdishSoraniNumberConverter.convert(1234),
          'یەک هەزار و دوو سەد و سی و چوار',
        );
        expect(
          KurdishSoraniNumberConverter.convert(12345),
          'دوازدە هەزار و سێ سەد و چل و پێنج',
        );
        expect(
          KurdishSoraniNumberConverter.convert(123456),
          'سەد و بیست و سێ هەزار و چوار سەد و پەنجا و شەش',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1234567),
          'یەک ملیۆن و دوو سەد و سی و چوار هەزار و پێنج سەد و شەست و حەوت',
        );
        expect(
          KurdishSoraniNumberConverter.convert(12345678),
          'دوازدە ملیۆن و سێ سەد و چل و پێنج هەزار و شەش سەد و حەفتا و هەشت',
        );
        expect(
          KurdishSoraniNumberConverter.convert(123456789),
          'سەد و بیست و سێ ملیۆن و چوار سەد و پەنجا و شەش هەزار و حەوت سەد و هەشتا و نۆ',
        );
      });

      test('Reverse sequential numbers', () {
        expect(
          KurdishSoraniNumberConverter.convert(321),
          'سێ سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(4321),
          'چوار هەزار و سێ سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(54321),
          'پەنجا و چوار هەزار و سێ سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(654321),
          'شەش سەد و پەنجا و چوار هەزار و سێ سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(7654321),
          'حەوت ملیۆن و شەش سەد و پەنجا و چوار هەزار و سێ سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(87654321),
          'هەشتا و حەوت ملیۆن و شەش سەد و پەنجا و چوار هەزار و سێ سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(987654321),
          'نۆ سەد و هەشتا و حەوت ملیۆن و شەش سەد و پەنجا و چوار هەزار و سێ سەد و بیست و یەک',
        );
      });

      test('Palindromic numbers', () {
        expect(KurdishSoraniNumberConverter.convert(121), 'سەد و بیست و یەک');
        expect(KurdishSoraniNumberConverter.convert(131), 'سەد و سی و یەک');
        expect(KurdishSoraniNumberConverter.convert(141), 'سەد و چل و یەک');
        expect(KurdishSoraniNumberConverter.convert(151), 'سەد و پەنجا و یەک');
        expect(KurdishSoraniNumberConverter.convert(161), 'سەد و شەست و یەک');
        expect(KurdishSoraniNumberConverter.convert(171), 'سەد و حەفتا و یەک');
        expect(KurdishSoraniNumberConverter.convert(181), 'سەد و هەشتا و یەک');
        expect(KurdishSoraniNumberConverter.convert(191), 'سەد و نەوەد و یەک');
        expect(
          KurdishSoraniNumberConverter.convert(1221),
          'یەک هەزار و دوو سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1331),
          'یەک هەزار و سێ سەد و سی و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(12321),
          'دوازدە هەزار و سێ سەد و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(123321),
          'سەد و بیست و سێ هەزار و سێ سەد و بیست و یەک',
        );
      });

      test('Numbers ending in zeros', () {
        expect(KurdishSoraniNumberConverter.convert(10), 'دە');
        expect(KurdishSoraniNumberConverter.convert(20), 'بیست');
        expect(KurdishSoraniNumberConverter.convert(30), 'سی');
        expect(KurdishSoraniNumberConverter.convert(100), 'سەد');
        expect(KurdishSoraniNumberConverter.convert(200), 'دوو سەد');
        expect(KurdishSoraniNumberConverter.convert(300), 'سێ سەد');
        expect(KurdishSoraniNumberConverter.convert(1000), 'یەک هەزار');
        expect(KurdishSoraniNumberConverter.convert(2000), 'دوو هەزار');
        expect(KurdishSoraniNumberConverter.convert(3000), 'سێ هەزار');
        expect(KurdishSoraniNumberConverter.convert(10000), 'دە هەزار');
        expect(KurdishSoraniNumberConverter.convert(20000), 'بیست هەزار');
        expect(KurdishSoraniNumberConverter.convert(30000), 'سی هەزار');
        expect(KurdishSoraniNumberConverter.convert(100000), 'سەد هەزار');
        expect(KurdishSoraniNumberConverter.convert(200000), 'دوو سەد هەزار');
        expect(KurdishSoraniNumberConverter.convert(300000), 'سێ سەد هەزار');
      });
    });

    group('Mathematical constants and common numbers', () {
      test('Common mathematical numbers', () {
        expect(KurdishSoraniNumberConverter.convert(12), 'دوازدە');
        expect(KurdishSoraniNumberConverter.convert(24), 'بیست و چوار');
        expect(KurdishSoraniNumberConverter.convert(60), 'شەست');
        expect(KurdishSoraniNumberConverter.convert(360), 'سێ سەد و شەست');
        expect(
          KurdishSoraniNumberConverter.convert(365),
          'سێ سەد و شەست و پێنج',
        );
        expect(
          KurdishSoraniNumberConverter.convert(366),
          'سێ سەد و شەست و شەش',
        );
      });

      test('Binary powers', () {
        expect(KurdishSoraniNumberConverter.convert(2), 'دوو');
        expect(KurdishSoraniNumberConverter.convert(4), 'چوار');
        expect(KurdishSoraniNumberConverter.convert(8), 'هەشت');
        expect(KurdishSoraniNumberConverter.convert(16), 'شازدە');
        expect(KurdishSoraniNumberConverter.convert(32), 'سی و دوو');
        expect(KurdishSoraniNumberConverter.convert(64), 'شەست و چوار');
        expect(KurdishSoraniNumberConverter.convert(128), 'سەد و بیست و هەشت');
        expect(
          KurdishSoraniNumberConverter.convert(256),
          'دوو سەد و پەنجا و شەش',
        );
        expect(KurdishSoraniNumberConverter.convert(512), 'پێنج سەد و دوازدە');
        expect(
          KurdishSoraniNumberConverter.convert(1024),
          'یەک هەزار و بیست و چوار',
        );
        expect(
          KurdishSoraniNumberConverter.convert(2048),
          'دوو هەزار و چل و هەشت',
        );
        expect(
          KurdishSoraniNumberConverter.convert(4096),
          'چوار هەزار و نەوەد و شەش',
        );
      });

      test('Century numbers', () {
        expect(
          KurdishSoraniNumberConverter.convert(1800),
          'یەک هەزار و هەشت سەد',
        );
        expect(
          KurdishSoraniNumberConverter.convert(1900),
          'یەک هەزار و نۆ سەد',
        );
        expect(KurdishSoraniNumberConverter.convert(2000), 'دوو هەزار');
        expect(KurdishSoraniNumberConverter.convert(2001), 'دوو هەزار و یەک');
        expect(KurdishSoraniNumberConverter.convert(2010), 'دوو هەزار و دە');
        expect(KurdishSoraniNumberConverter.convert(2020), 'دوو هەزار و بیست');
        expect(
          KurdishSoraniNumberConverter.convert(2021),
          'دوو هەزار و بیست و یەک',
        );
        expect(
          KurdishSoraniNumberConverter.convert(2022),
          'دوو هەزار و بیست و دوو',
        );
        expect(
          KurdishSoraniNumberConverter.convert(2023),
          'دوو هەزار و بیست و سێ',
        );
        expect(
          KurdishSoraniNumberConverter.convert(2024),
          'دوو هەزار و بیست و چوار',
        );
        expect(
          KurdishSoraniNumberConverter.convert(2025),
          'دوو هەزار و بیست و پێنج',
        );
      });
    });

    group('Performance and stress tests', () {
      test('Random large numbers', () {
        final testNumbers = [
          1357924680,
          2468135790,
          9876543210,
          1122334455,
          5544332211,
          1010101010,
          2020202020,
          9999888877,
          1234554321,
          9876543210,
        ];

        for (int number in testNumbers) {
          final result = KurdishSoraniNumberConverter.convert(number);
          expect(result, isNotEmpty);
          expect(result, isA<String>());
        }
      });

      test('Very large numbers close to limits', () {
        expect(
          KurdishSoraniNumberConverter.convert(9223372036854775807),
          isA<String>(),
        );
        expect(
          KurdishSoraniNumberConverter.convert(-9223372036854775808),
          isA<String>(),
        );
      });
    });
  });

  group('Double input support', () {
    test('Whole numbers as doubles', () {
      expect(KurdishSoraniNumberConverter.convert(123.0), 'سەد و بیست و سێ');
      expect(KurdishSoraniNumberConverter.convert(1000.0), 'یەک هەزار');
      expect(KurdishSoraniNumberConverter.convert(0.0), 'سفر');
    });

    test('Doubles with decimals (should truncate/round)', () {
      expect(
        KurdishSoraniNumberConverter.convert(123.7),
        'سەد و بیست و چوار',
      ); // rounds to 124
      expect(
        KurdishSoraniNumberConverter.convert(999.4),
        'نۆ سەد و نەوەد و نۆ',
      ); // rounds to 999
      expect(
        KurdishSoraniNumberConverter.convert(50.5),
        'پەنجا و یەک',
      ); // rounds to 51
      expect(
        KurdishSoraniNumberConverter.convert(99.9),
        'سەد',
      ); // rounds to 100
    });

    test('Negative doubles', () {
      expect(
        KurdishSoraniNumberConverter.convert(-123.5),
        'سالب سەد و بیست و چوار',
      );
      expect(KurdishSoraniNumberConverter.convert(-1.7), 'سالب دوو');
      expect(
        KurdishSoraniNumberConverter.convert(-999.3),
        'سالب نۆ سەد و نەوەد و نۆ',
      );
    });

    test('Very small doubles', () {
      expect(KurdishSoraniNumberConverter.convert(0.1), 'سفر'); // rounds to 0
      expect(KurdishSoraniNumberConverter.convert(0.9), 'یەک'); // rounds to 1
      expect(KurdishSoraniNumberConverter.convert(-0.4), 'سفر'); // rounds to 0
      expect(
        KurdishSoraniNumberConverter.convert(-0.5),
        'سالب یەک',
      ); // rounds to -1 (this is correct behavior)
    });

    test('Large doubles', () {
      expect(
        KurdishSoraniNumberConverter.convert(1234567.8),
        'یەک ملیۆن و دوو سەد و سی و چوار هەزار و پێنج سەد و شەست و هەشت',
      );
      expect(KurdishSoraniNumberConverter.convert(1000000.0), 'یەک ملیۆن');
    });
  });

  group('Mixed numeric types', () {
    test('int type', () {
      int num1 = 456;
      expect(
        KurdishSoraniNumberConverter.convert(num1),
        'چوار سەد و پەنجا و شەش',
      );
    });

    test('double type', () {
      double num2 = 789.0;
      expect(
        KurdishSoraniNumberConverter.convert(num2),
        'حەوت سەد و هەشتا و نۆ',
      );
    });

    test('num type (can be int or double)', () {
      num num3 = 321;
      expect(KurdishSoraniNumberConverter.convert(num3), 'سێ سەد و بیست و یەک');

      num num4 = 654.0;
      expect(
        KurdishSoraniNumberConverter.convert(num4),
        'شەش سەد و پەنجا و چوار',
      );
    });
  });

  group('Edge cases for doubles', () {
    test('Rounding edge cases', () {
      expect(KurdishSoraniNumberConverter.convert(10.4), 'دە'); // rounds to 10
      expect(
        KurdishSoraniNumberConverter.convert(10.5),
        'یازدە',
      ); // rounds to 11
      expect(
        KurdishSoraniNumberConverter.convert(10.6),
        'یازدە',
      ); // rounds to 11
      expect(
        KurdishSoraniNumberConverter.convert(19.5),
        'بیست',
      ); // rounds to 20
    });

    test('Teen numbers as doubles', () {
      expect(KurdishSoraniNumberConverter.convert(11.0), 'یازدە');
      expect(
        KurdishSoraniNumberConverter.convert(15.7),
        'شازدە',
      ); // rounds to 16
      expect(KurdishSoraniNumberConverter.convert(19.2), 'نۆزدە');
    });

    test('Boundary doubles', () {
      expect(KurdishSoraniNumberConverter.convert(99.9), 'سەد');
      expect(KurdishSoraniNumberConverter.convert(999.9), 'یەک هەزار');
      expect(KurdishSoraniNumberConverter.convert(9999.9), 'دە هەزار');
    });
  });

  group('Scientific notation and special doubles', () {
    test('Scientific notation', () {
      expect(KurdishSoraniNumberConverter.convert(1e3), 'یەک هەزار'); // 1000
      expect(KurdishSoraniNumberConverter.convert(1e6), 'یەک ملیۆن'); // 1000000
      expect(
        KurdishSoraniNumberConverter.convert(2.5e3),
        'دوو هەزار و پێنج سەد',
      ); // 2500
    });

    test('Very precise doubles', () {
      expect(
        KurdishSoraniNumberConverter.convert(123.456789),
        'سەد و بیست و سێ',
      );
      expect(KurdishSoraniNumberConverter.convert(999.999999), 'یەک هەزار');
    });
  });

  group('Extreme double values', () {
    test('Maximum safe double values', () {
      expect(
        KurdishSoraniNumberConverter.convert(9223372036854775000.0),
        isA<String>(),
      );
    });

    test('Negative extreme values', () {
      expect(
        KurdishSoraniNumberConverter.convert(-9223372036854775000.0),
        isA<String>(),
      );
    });
  });

  group('Decimal precision tests', () {
    test('Half values rounding', () {
      expect(KurdishSoraniNumberConverter.convert(0.5), 'یەک'); // rounds to 1
      expect(KurdishSoraniNumberConverter.convert(1.5), 'دوو'); // rounds to 2
      expect(KurdishSoraniNumberConverter.convert(2.5), 'سێ'); // rounds to 3
      expect(
        KurdishSoraniNumberConverter.convert(100.5),
        'سەد و یەک',
      ); // rounds to 101
    });

    test('Quarter values', () {
      expect(KurdishSoraniNumberConverter.convert(10.25), 'دە'); // rounds to 10
      expect(
        KurdishSoraniNumberConverter.convert(10.75),
        'یازدە',
      ); // rounds to 11
      expect(
        KurdishSoraniNumberConverter.convert(99.25),
        'نەوەد و نۆ',
      ); // rounds to 99
      expect(
        KurdishSoraniNumberConverter.convert(99.75),
        'سەد',
      ); // rounds to 100
    });
  });

  group('Practical double usage scenarios', () {
    test('Financial calculations', () {
      expect(
        KurdishSoraniNumberConverter.convert(1250.00),
        'یەک هەزار و دوو سەد و پەنجا',
      );
      expect(
        KurdishSoraniNumberConverter.convert(3500.50),
        'سێ هەزار و پێنج سەد و یەک',
      );
    });

    test('Measurement conversions', () {
      expect(
        KurdishSoraniNumberConverter.convert(12.5),
        'سێزدە',
      ); // 12.5 rounds to 13
      expect(
        KurdishSoraniNumberConverter.convert(45.8),
        'چل و شەش',
      ); // 45.8 rounds to 46
      expect(
        KurdishSoraniNumberConverter.convert(100.2),
        'سەد',
      ); // 100.2 rounds to 100
    });

    test('Statistical data', () {
      expect(
        KurdishSoraniNumberConverter.convert(365.25),
        'سێ سەد و شەست و پێنج',
      );
      expect(
        KurdishSoraniNumberConverter.convert(1440.5),
        'یەک هەزار و چوار سەد و چل و یەک',
      );
    });
  });
}
