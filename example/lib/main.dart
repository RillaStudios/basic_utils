import 'package:flutter/material.dart';
import 'package:basic_utils/basic_utils.dart';

void main() {
  final now = DateTime.now();

  bool today = now.isToday(); // true

  debugPrint('Today: $today');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
