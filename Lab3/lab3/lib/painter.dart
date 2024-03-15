import 'package:flutter/material.dart';

class Painter {
  final Color _APPBAR_COLOR = Colors.deepPurple.shade300;
  final Color _TEXT_COLOR = Colors.white;

  getAppColor() {
    return _APPBAR_COLOR;
  }

  getTextColor() {
    return _TEXT_COLOR;
  }
}
