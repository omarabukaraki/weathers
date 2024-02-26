import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weathers/models/weather_model.dart';
import 'package:weathers/provider/weather_provider.dart';
import 'package:weathers/view/search_page.dart';

import '../component/day_weather.dart';
import '../component/hour_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      body: weatherData == null
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Weather',
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return SearchPage();
                            },
                          ));
                        },
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'There is no weather start searching now',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  height: 900,
                  padding: const EdgeInsets.only(top: 30),
                  color: const Color(0xff1f2125),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Updated at  ${weatherData!.date.day} / ${weatherData!.date.month} / ${weatherData!.date.year}',
                            style: const TextStyle(color: Colors.grey),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return SearchPage();
                                })));
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      Text(
                        Provider.of<WeatherProvider>(context)
                            .cityName
                            .toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        '${weatherData!.temp.toString()}°',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 40,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${weatherData!.maxTemp.toInt().toString()}°',
                            style: const TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '  ${weatherData!.minTemp.toInt().toString()} °',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Text(
                        weatherData!.stateWeather,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 32,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8),
                        child: Divider(
                          thickness: 0.3,
                          color: Color.fromARGB(255, 105, 105, 105),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HourWeather(
                                  am: 'AM',
                                  time: 8,
                                  path: weatherData!.iconh8,
                                  temp: weatherData!.tempHour8),
                              HourWeather(
                                  am: 'AM',
                                  time: 10,
                                  path: weatherData!.iconh10,
                                  temp: weatherData!.tempHour10),
                              HourWeather(
                                  am: 'AM',
                                  time: 12,
                                  path: weatherData!.iconh12,
                                  temp: weatherData!.tempHour12),
                              HourWeather(
                                  time: 2,
                                  path: weatherData!.iconh14,
                                  temp: weatherData!.tempHour14),
                              HourWeather(
                                  time: 4,
                                  path: weatherData!.iconh16,
                                  temp: weatherData!.tempHour16),
                              HourWeather(
                                  time: 6,
                                  path: weatherData!.iconh18,
                                  temp: weatherData!.tempHour18),
                              HourWeather(
                                  time: 8,
                                  path: weatherData!.iconh20,
                                  temp: weatherData!.tempHour20),
                              HourWeather(
                                  time: 10,
                                  path: weatherData!.iconh22,
                                  temp: weatherData!.tempHour22),
                            ]),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8),
                        child: Divider(
                          thickness: 0.3,
                          color: Color.fromARGB(255, 105, 105, 105),
                        ),
                      ),
                      DayWeather(
                          text:
                              '${weatherData!.date.day} / ${weatherData!.date.month}',
                          path: weatherData!.icond1,
                          temp: weatherData!.temp),
                      DayWeather(
                          text:
                              '${weatherData!.date.day + 1} / ${weatherData!.date.month}',
                          path: weatherData!.icond2,
                          temp: weatherData!.day2),
                      DayWeather(
                          text:
                              '${weatherData!.date.day + 2} / ${weatherData!.date.month}',
                          path: weatherData!.icond3,
                          temp: weatherData!.day3),
                      DayWeather(
                          text:
                              '${weatherData!.date.day + 3} / ${weatherData!.date.month}',
                          path: weatherData!.icond1,
                          temp: weatherData!.day2),
                      DayWeather(
                          text:
                              '${weatherData!.date.day + 4} / ${weatherData!.date.month}',
                          path: weatherData!.icond1,
                          temp: weatherData!.day2),
                      DayWeather(
                          text:
                              '${weatherData!.date.day + 5} / ${weatherData!.date.month}',
                          path: weatherData!.icond1,
                          temp: weatherData!.day2),
                      DayWeather(
                          text:
                              '${weatherData!.date.day + 6} / ${weatherData!.date.month}',
                          path: weatherData!.icond1,
                          temp: weatherData!.day2),
                      // Container(
                      //   width: double.infinity,
                      //   height: 30,
                      //   color: Colors.amber,
                      // )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
