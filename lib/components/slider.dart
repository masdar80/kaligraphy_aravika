import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  MySlider(this.onSliderChanged);
  final void Function(double color) onSliderChanged;
  _SliderState createState() => _SliderState(onSliderChanged);
}

class _SliderState extends State<MySlider> {
  _SliderState(this.onSliderChanged);
  final void Function(double color) onSliderChanged;
  @override
  double _currentSliderValue = 1;
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 1,
      max: 50,
      onChangeEnd: onSliderChanged,
      onChanged: (double newvalue) {

        print(newvalue);
        setState(() {

          _currentSliderValue=newvalue;

        });
      },
    );
  }
}
