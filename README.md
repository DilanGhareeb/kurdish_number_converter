# Kurdish Number Converter

A Flutter package to convert numbers into Kurdish Sorani words for localization. For example, if you want to change a number to how it is written in Kurdish Sorani then this is what you need.

---

## Insstallation

```bash
flutter pub add kurdish_number_converter
```

---

## Features

- Convert numbers to Kurdish digits easily
- Supports num inputs
- Lightweight and easy to integrate in any Flutter project
- Supporting negative number

---

## Example

```dart
import 'package:kurdish_number_converter/kurdish_number_converter.dart';

void main() {
  // Basic conversion
  print(KurdishSoraniNumberConverter.convert(123));
  // Output: سەد و بیست و سێ

  print(KurdishSoraniNumberConverter.convert(4567));
  // Output: چوار هەزار و پێنج سەد و شەست و حەوت

  // Double conversion (automatically rounds)
  print(KurdishSoraniNumberConverter.convert(123.7));
  // Output: سەد و بیست و چوار

  // Negative numbers
  print(KurdishSoraniNumberConverter.convert(-456));
  // Output: سالب چوار سەد و پەنجا و شەش
}
```
