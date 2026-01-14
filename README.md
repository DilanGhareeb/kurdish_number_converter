# Kurdish Number Converter

A Flutter package to convert numbers into Kurdish Sorani words for localization. For example, if you want to change a number to how it is written in Kurdish Sorani then this is what you need.

---

## Features

- Convert numbers to Kurdish digits easily
- Supports integer inputs
- Lightweight and easy to integrate in any Flutter project

---

## Example

```dart
import 'package:kurdish_number_converter/kurdish_number_converter.dart';

void main() {
  print(KurdishSoraniNumberConverter.convert(123)); // سەد و بیست و سێ
  print(KurdishSoraniNumberConverter.convert(4567)); // چوار هەزار و پێنج سەد و شەست و حەوت
}
```
