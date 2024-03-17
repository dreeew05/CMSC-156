import 'package:flutter/material.dart';
import 'package:lab3/Lab1/Board.dart';
import 'package:lab3/description.dart';
import 'package:lab3/pageFactory.dart';

class Lab1 extends CustomPage {
  const Lab1({super.key, required super.title});

  @override
  Widget build(BuildContext context) {
    const String descriptionText =
        "This is a simple app that demonstrates the use of the CustomPainter widget. The app draws a chess board.";
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: super.generateAppBar(context),
          body: const TabBarView(children: [
            Center(
              child: Board(),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Description(descriptionText: descriptionText))),
            )
          ])),
    );
  }
}
