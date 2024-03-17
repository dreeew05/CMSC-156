import 'package:flutter/material.dart';
import 'package:lab3/Lab1/Lab1.dart';
import 'package:lab3/Lab2/Lab2.dart';
import 'package:lab3/painter.dart';

abstract class CustomPage extends StatelessWidget {
  const CustomPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context);

  AppBar generateAppBar(BuildContext context) {
    Painter painter = Painter();
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: painter.getTextColor()),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: painter.getTextColor(),
        ),
        onPressed: () => Navigator.pop(context),
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
      centerTitle: true,
      backgroundColor: painter.getAppColor(),
    );
  }
}

class PageFactory {
  CustomPage createPage(int key, String title) {
    switch (key) {
      case 1:
        return Lab1(title: title);
      case 2:
        return Lab2(title: title);
      default:
        return Lab1(title: title);
    }
  }
}
