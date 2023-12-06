import 'package:flutter/material.dart';
import 'package:weather_udemy/model/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? weatherProvider;
  void getWeatherData(WeatherModel weatherData) {
    weatherProvider = weatherData;
    notifyListeners();
  }
}
