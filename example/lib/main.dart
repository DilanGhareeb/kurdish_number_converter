import 'package:flutter/material.dart';
import 'package:kurdish_number_converter/kurdish_number_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurdish Number Converter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NumberConverterScreen(),
    );
  }
}

class NumberConverterScreen extends StatefulWidget {
  const NumberConverterScreen({super.key});

  @override
  State<NumberConverterScreen> createState() => _NumberConverterScreenState();
}

class _NumberConverterScreenState extends State<NumberConverterScreen> {
  final TextEditingController _numberController = TextEditingController();
  String _convertedText = '';

  void _convertNumber() {
    final input = _numberController.text;
    if (input.isEmpty) {
      setState(() {
        _convertedText = 'تکایە ژمارە بنوسە';
      });
      return;
    }

    try {
      final number = int.parse(input);
      setState(() {
        _convertedText = KurdishSoraniNumberConverter.convert(number);
      });
    } catch (e) {
      setState(() {
        _convertedText = 'ژمارەی دروست نیە';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('گۆڕینی ژمارە بۆ زمانی کوردی')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numberController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ژمارە',
                hintText: 'ژمارەکەت لێرە بنوسە',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertNumber,
              child: const Text('بگۆڕە'),
            ),
            const SizedBox(height: 30),
            Text(
              _convertedText,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }
}
