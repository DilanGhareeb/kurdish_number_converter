import 'package:flutter_test/flutter_test.dart';
import 'package:sorani_number_words/sorani_number_words.dart';

void main() {
  group('SoraniNumberConverter', () {
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
          expect(SoraniNumberConverter.convert(number), expected);
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
          expect(SoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Tens (10, 20-99)', () {
      final testCases = {
        10: 'دە',
        20: 'بیست',
        21: 'بیست و یەک',
        30: 'سی',
        32: 'سی و دوو',
        40: 'چل',
        43: 'چل و سێ',
        50: 'پەنجا',
        54: 'پەنجا و چوار',
        60: 'شەست',
        65: 'شەست و پێنج',
        70: 'حەفتا',
        76: 'حەفتا و شەش',
        80: 'هەشتا',
        87: 'هەشتا و حەوت',
        90: 'نەوەد',
        98: 'نەوەد و هەشت',
        99: 'نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(SoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Hundreds (100-999)', () {
      final testCases = {
        100: 'سەد',
        101: 'سەد و یەک',
        110: 'سەد و دە',
        111: 'سەد و یازدە',
        123: 'سەد و بیست و سێ',
        200: 'دووسەد',
        250: 'دووسەد و پەنجا',
        300: 'سێسەد',
        333: 'سێسەد و سی و سێ',
        400: 'چوارسەد',
        404: 'چوارسەد و چوار',
        500: 'پێنسەد',
        555: 'پێنسەد و پەنجا و پێنج',
        600: 'شەشسەد',
        666: 'شەشسەد و شەست و شەش',
        700: 'حەوتسەد',
        777: 'حەوتسەد و حەفتا و حەوت',
        800: 'هەشتسەد',
        888: 'هەشتسەد و هەشتا و هەشت',
        900: 'نۆسەد',
        999: 'نۆسەد و نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(SoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Thousands (1000-999999)', () {
      final testCases = {
        1000: 'یەک هەزار',
        1001: 'یەک هەزار و یەک',
        1010: 'یەک هەزار و دە',
        1100: 'یەک هەزار و سەد',
        1111: 'یەک هەزار و سەد و یازدە',
        2000: 'دوو هەزار',
        2500: 'دوو هەزار و پێنسەد',
        3000: 'سێ هەزار',
        3333: 'سێ هەزار و سێسەد و سی و سێ',
        10000: 'دە هەزار',
        12345: 'دوازدە هەزار و سێسەد و چل و پێنج',
        50000: 'پەنجا هەزار',
        98765: 'نەوەد و هەشت هەزار و حەوتسەد و شەست و پێنج',
        100000: 'سەد هەزار',
        123456: 'سەد و بیست و سێ هەزار و چوارسەد و پەنجا و شەش', // To be fixed
        999999: 'نۆسەد و نەوەد و نۆ هەزار و نۆسەد و نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(SoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Millions (1000000-999999999)', () {
      final testCases = {
        1000000: 'یەک ملیۆن',
        1000001: 'یەک ملیۆن و یەک',
        1234567: 'یەک ملیۆن و دووسەد و سی و چوار هەزار و پێنسەد و شەست و حەوت',
        2000000: 'دوو ملیۆن',
        5000000: 'پێنج ملیۆن',
        9876543: 'نۆ ملیۆن و هەشتسەد و حەفتا و شەش هەزار و پێنسەد و چل و سێ',
        10000000: 'دە ملیۆن',
        12345678:
            'بیست و سێ ملیۆن و سێسەد و چل و پێنج هەزار و شەشسەد و حەفتا و هەشت',
        100000000: 'سەد ملیۆن',
        123456789:
            'سەد و بیست و سێ ملیۆن و چوارسەد و پەنجا و شەش هەزار و حەوتسەد و هەشتا و نۆ',
        999999999:
            'نۆسەد و نەوەد و نۆ ملیۆن و نۆسەد و نەوەد و نۆ هەزار و نۆسەد و نەوەد و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(SoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Billions (1000000000+)', () {
      final testCases = {
        1000000000: 'یەک ملیار',
        1000000001: 'یەک ملیار و یەک',
        1234567890:
            'یەک ملیار و دووسەد و سی و چوار ملیۆن و پێنسەد و شەست و حەوت هەزار و هەشتسەد و نەوەد',
        2000000000: 'دوو ملیار',
        2147483647:
            'دوو ملیار و سەد و چل و حەوت ملیۆن و چوارسەد و هەشتا و سێ هەزار و شەشسەد و چل و حەوت',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(SoraniNumberConverter.convert(number), expected);
        });
      });
    });

    group('Negative numbers', () {
      final testCases = {
        -1: 'سالب یەک',
        -10: 'سالب دە',
        -11: 'سالب یازدە',
        -123: 'سالب سەد و بیست و سێ',
        -1000: 'سالب یەک هەزار',
        -1000000: 'سالب یەک ملیۆن',
        -123456789:
            'سالب سەد و بیست و سێ ملیۆن و چوارسەد و پەنجا و شەش هەزار و حەوتسەد و هەشتا و نۆ',
      };

      testCases.forEach((number, expected) {
        test('$number → "$expected"', () {
          expect(SoraniNumberConverter.convert(number), expected);
        });
      });
    });
  });
}
