import 'package:flutter/material.dart';
import 'package:lab2/boxSlider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lab Activity 2',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: const BoxSlider(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
