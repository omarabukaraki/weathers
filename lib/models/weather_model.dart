class WeatherModel {
  DateTime date;
  double temp;
  double maxTemp;
  double minTemp;
  String stateWeather;
  double tempHour8;
  String iconh8;
  double tempHour10;
  String iconh10;
  double tempHour12;
  String iconh12;
  double tempHour14;
  String iconh14;
  double tempHour16;
  String iconh16;
  double tempHour18;
  String iconh18;
  double tempHour20;
  String iconh20;
  double tempHour22;
  String iconh22;
  String icond1;
  double day2;
  String icond2;
  double day3;
  String icond3;
  // double day4;
  // String icond4;
  // double day5;
  // String icond5;
  // double day6;
  // String icond6;
  // double day7;
  // String icond7;

  WeatherModel({
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.stateWeather,
    required this.tempHour8,
    required this.iconh8,
    required this.tempHour10,
    required this.iconh10,
    required this.tempHour12,
    required this.iconh12,
    required this.tempHour14,
    required this.iconh14,
    required this.tempHour16,
    required this.iconh16,
    required this.tempHour18,
    required this.iconh18,
    required this.tempHour20,
    required this.iconh20,
    required this.tempHour22,
    required this.iconh22,
    required this.day2,
    required this.day3,
    // required this.day4,
    // required this.day5,
    // required this.day6,
    // required this.day7,
    required this.icond1,
    required this.icond2,
    required this.icond3,
    // required this.icond4,
    // required this.icond5,
    // required this.icond6,
    // required this.icond7
  });

  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'];
    var jsonDataHour = data['forecast']['forecastday'][0]['hour'];
    return WeatherModel(
      date: DateTime.parse(jsonData[0]['date']),
      temp: jsonData[0]['day']['avgtemp_c'],
      maxTemp: jsonData[0]['day']['maxtemp_c'],
      minTemp: jsonData[0]['day']['mintemp_c'],
      stateWeather: jsonData[0]['day']['condition']['text'],
      tempHour8: jsonDataHour[8]['temp_c'],
      iconh8: jsonDataHour[8]['condition']['icon'],
      tempHour10: jsonDataHour[10]['temp_c'],
      iconh10: jsonDataHour[10]['condition']['icon'],
      tempHour12: jsonDataHour[12]['temp_c'],
      iconh12: jsonDataHour[12]['condition']['icon'],
      tempHour14: jsonDataHour[14]['temp_c'],
      iconh14: jsonDataHour[14]['condition']['icon'],
      tempHour16: jsonDataHour[16]['temp_c'],
      iconh16: jsonDataHour[16]['condition']['icon'],
      tempHour18: jsonDataHour[18]['temp_c'],
      iconh18: jsonDataHour[18]['condition']['icon'],
      tempHour20: jsonDataHour[20]['temp_c'],
      iconh20: jsonDataHour[20]['condition']['icon'],
      tempHour22: jsonDataHour[22]['temp_c'],
      iconh22: jsonDataHour[22]['condition']['icon'],
      day2: jsonData[1]['day']['avgtemp_c'],
      day3: jsonData[2]['day']['avgtemp_c'],
      // day4: jsonData[3]['day']['avgtemp_c'],
      // day5: jsonData[4]['day']['avgtemp_c'],
      // day6: jsonData[5]['day']['avgtemp_c'],
      // day7: jsonData[6]['day']['avgtemp_c'],
      icond1: jsonData[0]['day']['condition']['icon'],
      icond2: jsonData[1]['day']['condition']['icon'],
      icond3: jsonData[2]['day']['condition']['icon'],
      // icond4: jsonData[3]['day']['condition']['icon'],
      // icond5: jsonData[4]['day']['condition']['icon'],
      // icond6: jsonData[5]['day']['condition']['icon'],
      // icond7: jsonData[6]['day']['condition']['icon']
    );
  }
}
