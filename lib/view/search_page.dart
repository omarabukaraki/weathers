import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weathers/models/weather_model.dart';
import 'package:weathers/provider/weather_provider.dart';
import 'package:weathers/services/weather_services.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        backgroundColor: const Color(0xff1f2125),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Search',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                suffixIcon: IconButton(
                  onPressed: () async {
                    WeatherServices services = WeatherServices();
                    WeatherModel? weather =
                        await services.getWeather(cityName: cityName!);
                    Provider.of<WeatherProvider>(context, listen: false)
                        .weatherData = weather;
                    Provider.of<WeatherProvider>(context, listen: false)
                        .cityName = cityName;
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                )),
            onChanged: (value) {
              cityName = value;
            },
            onSubmitted: (value) async {
              cityName = value;
              WeatherServices services = WeatherServices();
              WeatherModel? weather =
                  await services.getWeather(cityName: cityName!);
              Provider.of<WeatherProvider>(context, listen: false).weatherData =
                  weather;
              Provider.of<WeatherProvider>(context, listen: false).cityName =
                  cityName;
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
