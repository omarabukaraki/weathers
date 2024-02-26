import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weathers/models/weather_model.dart';

class WeatherServices {
  Future<WeatherModel> getWeather({required String cityName}) async {
    String key = 'f1a5979635ec443f9c7180754232202';
    String base = 'http://api.weatherapi.com/v1';
    Uri url = Uri.parse(
        '$base/forecast.json?key=$key&q=$cityName&days=7&aqi=no&alerts=no');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);

    WeatherModel weather = WeatherModel.fromJson(data);
    return weather;

    // String temp =
    //     data['forecast']['forecastday'][0]['day']['condition']['icon'];

    // print(temp);
  }
}
