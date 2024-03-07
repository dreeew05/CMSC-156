import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final Color color;
  final double initVal, maxVal;
  final ValueChanged<double> onValueChanged;

  const CustomSlider(
      {super.key,
      required this.color,
      required this.initVal,
      required this.maxVal,
      required this.onValueChanged});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: widget.initVal,
      max: widget.maxVal,
      onChanged: widget.onValueChanged,
      thumbColor: widget.color,
      activeColor: widget.color,
    );
  }
}
