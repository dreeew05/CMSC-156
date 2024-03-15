import 'package:flutter/material.dart';
import 'package:lab3/Lab1/lab1.dart';
import 'package:lab3/Lab2/Lab2.dart';
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Lab1()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: painter.getAppColor()),
            child: Text(
              'Go to Lab 1',
              style: TextStyle(color: painter.getTextColor()),
            ),
          ),
          const Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Lab2()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: painter.getAppColor()),
            child: Text(
              'Go to Lab 2',
              style: TextStyle(color: painter.getTextColor()),
            ),
          ),
        ],
      )),
    );
  }
}
