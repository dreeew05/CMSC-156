import 'package:flutter/material.dart';

class GrowingBox extends StatelessWidget {
  final Color color;
  final double boxHeight;
  final double _maxWidth = 100;

  const GrowingBox({super.key, required this.color, required this.boxHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: _maxWidth,
      height: boxHeight,
    );
  }
}
