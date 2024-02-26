import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HourWeather extends StatelessWidget {
  HourWeather(
      {super.key,
      required this.time,
      required this.path,
      required this.temp,
      this.am = 'PM'});
  int? time;
  String? path;
  double? temp;
  String? am;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Text(
          '$time $am',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0),
          child: Image.network('http:$path')),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Text(
          temp.toString(),
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ]);
  }
}
