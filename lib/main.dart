import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weathers/provider/weather_provider.dart';
import 'package:weathers/view/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return WeatherProvider();
      },
      child: const WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'YanoneKaffeesatz'),
      home: const HomePage(),
    );
  }
}
