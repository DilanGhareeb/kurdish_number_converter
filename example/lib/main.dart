import 'package:flutter/material.dart';
import 'package:sorani_number_words/sorani_number_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorani Number Words Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Sorani Number Converter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('123: ${SoraniNumberConverter.convert(123)}'),
              Text('4567: ${SoraniNumberConverter.convert(4567)}'),
              Text('89123: ${SoraniNumberConverter.convert(89123)}'),
            ],
          ),
        ),
      ),
    );
  }
}
