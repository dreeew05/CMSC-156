import 'package:flutter/material.dart';
import 'package:test_application/Custom/SquareCircle.dart';
import 'package:test_application/Shapes/Square.dart';

class Board extends StatelessWidget {
  const Board({super.key});
  static const double squareSize = 50;

  Row buildRow(int isWhiteFirst, bool isPureBlack, Color pieceColor) {
    List<Widget> list = [];
    for (int i = 0; i < 8; i++) {
      if (i % 2 == isWhiteFirst) {
        if (!isPureBlack) {
          list.add(
              SquareCircle(squareColor: Colors.black, circleColor: pieceColor));
        } else {
          list.add(const Square(color: Colors.black, size: squareSize));
        }
      } else {
        list.add(const Square(color: Colors.white, size: squareSize));
      }
    }
    return Row(
      children: [const Spacer(), ...list, const Spacer()],
    );
  }

  Column buildColumn() {
    List<Widget> list = [];
    bool isPureBlack = false;
    Color pieceColor = Colors.red;
    for (int i = 0; i < 8; i++) {
      // Check if the row does not have the pieces
      // Otherwise, check for the color of the piece
      if (i == 3 || i == 4) {
        isPureBlack = true;
      } else {
        if (i > 4) {
          pieceColor = Colors.blue;
        }
        isPureBlack = false;
      }

      // Check if white first
      if (i % 2 == 0) {
        list.add(buildRow(0, isPureBlack, pieceColor));
      } else {
        list.add(buildRow(1, isPureBlack, pieceColor));
      }
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: buildColumn(),
    );
  }
}
