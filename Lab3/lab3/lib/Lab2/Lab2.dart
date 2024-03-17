import 'package:flutter/material.dart';
import 'package:lab3/Lab2/boxSlider.dart';
import 'package:lab3/description.dart';
import 'package:lab3/pageFactory.dart';

class Lab2 extends CustomPage {
  const Lab2({super.key, required super.title});

  @override
  Widget build(BuildContext context) {
    const String descriptionText =
        "This is a simple app that demonstrates the use of the AnimatedContainer widget. The app animates the height of a box.";

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: super.generateAppBar(context),
          body: const TabBarView(children: [
            Center(
              child: BoxSlider(),
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
