import 'package:flutter/material.dart';
import 'package:test_application/Board.dart';

class CheckerboardScaffold extends StatelessWidget {
  const CheckerboardScaffold({super.key});

  static const String appName = "Checkerboard";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
          backgroundColor: Colors.red.shade200,
        ),
        body: const Align(
          child: Board(),
        ),
        backgroundColor: Colors.blue.shade200,
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: CheckerboardScaffold.appName,
      home: SafeArea(
        child: CheckerboardScaffold(),
      ),
    ),
  );
}
