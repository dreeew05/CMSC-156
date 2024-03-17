import 'package:flutter/material.dart';
import 'package:lab3/pageFactory.dart';
import 'package:lab3/painter.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Painter painter = Painter();
    PageFactory pageFactory = PageFactory();

    Map<int, String> labTitles = {
      1: 'Lab 1 Activity - Checkerboard',
      2: 'Lab 2 Acitivity - Sliders'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab Activity 3',
          style: TextStyle(color: painter.getTextColor()),
        ),
        centerTitle: true,
        backgroundColor: painter.getAppColor(),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          pageFactory.createPage(1, labTitles[1]!)));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: painter.getAppColor()),
            child: Text(
              labTitles[1]!,
              style: TextStyle(color: painter.getTextColor()),
            ),
          ),
          const Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          pageFactory.createPage(2, labTitles[2]!)));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: painter.getAppColor()),
            child: Text(
              labTitles[2]!,
              style: TextStyle(color: painter.getTextColor()),
            ),
          ),
        ],
      )),
    );
  }
}
