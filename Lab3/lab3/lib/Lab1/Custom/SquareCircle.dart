import 'package:flutter/material.dart';
import 'package:lab3/Lab1/Shapes/Circle.dart';
import 'package:lab3/Lab1/Shapes/Square.dart';

class SquareCircle extends StatelessWidget {
  const SquareCircle(
      {required this.squareSize,
      required this.circleSize,
      required this.squareColor,
      required this.circleColor,
      super.key});

  // static const double squareSize = 45;
  // static const double circleSize = 35;
  final double squareSize;
  final double circleSize;
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
