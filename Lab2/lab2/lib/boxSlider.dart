import 'package:flutter/material.dart';
import 'package:lab2/components/customSlider.dart';
import 'package:lab2/components/growingBox.dart';

class BoxSlider extends StatefulWidget {
  const BoxSlider({super.key});

  @override
  State<BoxSlider> createState() => _BoxSliderState();
}

class _BoxSliderState extends State<BoxSlider> {
  final double _maxVal = 300;
  final Color _color1 = Colors.red,
      _color2 = Colors.green,
      _color3 = Colors.blue;

  double _currVal1 = 0, _currVal2 = 0, _currVal3 = 0;

  @override
  void initState() {
    super.initState();
    _setInitVal();
  }

  void _setInitVal() {
    _currVal1 = _maxVal / 2;
    _currVal2 = _maxVal / 2;
    _currVal3 = _maxVal / 2;
  }

  void _setVal(double newVal, int option) {
    setState(() {
      switch (option) {
        case 1:
          _currVal1 = newVal;
          break;
        case 2:
          _currVal2 = newVal;
          break;
        case 3:
          _currVal3 = newVal;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GrowingBox(
                color: _color1,
                boxHeight: _currVal1,
              ),
              GrowingBox(
                color: _color2,
                boxHeight: _currVal2,
              ),
              GrowingBox(
                color: _color3,
                boxHeight: _currVal3,
              ),
            ],
          ),
        ),
        // Used as a spacer
        const SizedBox(height: 20),
        Expanded(
          child: Column(
            children: [
              const Center(
                child: Text(
                  '1st box',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              CustomSlider(
                color: _color1,
                initVal: _currVal1,
                maxVal: _maxVal,
                onValueChanged: (newVal) => _setVal(newVal, 1),
              ),
              const Center(
                child: Text(
                  '2nd box',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              CustomSlider(
                color: _color2,
                initVal: _currVal2,
                maxVal: _maxVal,
                onValueChanged: (newVal) => _setVal(newVal, 2),
              ),
              const Center(
                child: Text(
                  '3rd box',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              CustomSlider(
                color: _color3,
                initVal: _currVal3,
                maxVal: _maxVal,
                onValueChanged: (newVal) => _setVal(newVal, 3),
              ),
            ],
          ),
        )
      ],
    );
  }
}
