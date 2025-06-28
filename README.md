# Kurdish Number Converter

A Flutter package that converts Western Arabic numerals (0–9) into Kurdish script numerals (٠–٩).  
Ideal for apps that need to display numbers in Kurdish language or localize numeric data.

---

## Features

- Convert numbers to Kurdish digits easily
- Supports integer and string inputs
- Lightweight and easy to integrate in any Flutter project

---

```dart
import 'package:kurdish_number_converter/kurdish_number_converter.dart';

void main() {
  print(KurdishSoraniNumberConverter.convert(123)); // سەد و بیست و سێ
  print(KurdishSoraniNumberConverter.convert(4567)); // چوار هەزار و پێنسەد و شەست و حەوت
}
```
