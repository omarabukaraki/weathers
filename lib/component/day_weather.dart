import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DayWeather extends StatelessWidget {
  DayWeather(
      {super.key, required this.path, required this.temp, required this.text});
  String? path;
  String? text;
  double? temp;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text!,
          style: TextStyle(color: Colors.white),
        ),
        Image.network('http:$path'),
        Text(
          temp.toString(),
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
