import 'package:flutter/material.dart';
import 'package:lab3/Lab1/Board.dart';
import 'package:lab3/painter.dart';

class Lab1 extends StatelessWidget {
  const Lab1({super.key});

  @override
  Widget build(BuildContext context) {
    Painter painter = Painter();
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Lab Activity 1',
              style: TextStyle(color: painter.getTextColor()),
            ),
            bottom: TabBar(
                labelColor: painter.getTextColor(),
                indicatorColor: painter.getTextColor(),
                tabs: const [
                  Tab(
                    text: 'Output',
                  ),
                  Tab(
                    text: 'Description',
                  )
                ]),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: painter.getTextColor(),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            centerTitle: true,
            backgroundColor: painter.getAppColor(),
          ),
          body: const TabBarView(children: [
            Center(
              child: Board(),
            ),
            Center(
              child: Text('Hello World'),
            )
          ])),
    ));
  }
}
