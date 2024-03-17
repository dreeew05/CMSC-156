import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.descriptionText});

  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue.shade400,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            descriptionText,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ));
  }
}
