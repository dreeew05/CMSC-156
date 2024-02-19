import 'package:flutter/material.dart';
import 'package:test_application/Shapes/Circle.dart';
import 'package:test_application/Shapes/Square.dart';

class SquareCircle extends StatelessWidget {
  const SquareCircle(
      {required this.squareColor, required this.circleColor, super.key});

  static const double squareSize = 50;
  static const double circleSize = 40;
  final Color squareColor;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Square(color: squareColor, size: squareSize),
        Positioned(
          top: (squareSize - circleSize) / 2,
          left: (squareSize - circleSize) / 2,
          child: Circle(color: circleColor, size: circleSize),
        ),
      ],
    );
  }
}
