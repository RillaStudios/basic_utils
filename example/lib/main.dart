import 'package:ext_utils/ext_utils.dart';
import 'package:flutter/material.dart';

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
