# sorani_number_words

A Flutter package to convert numbers to Kurdish Sorani words.

## Features

- Convert numbers (0-999,999,999) to Kurdish Sorani words
- Supports positive and negative numbers

## Usage

```dart
import 'package:sorani_number_words/sorani_number_words.dart';

void main() {
  print(SoraniNumberConverter.convert(123)); // سەد و بیست و سێ
  print(SoraniNumberConverter.convert(4567)); // چوار هەزار و پێنسەد و شەست و حەوت
}
```
