import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:weather_udemy/model/weather_model.dart';

class ApiServices {
  String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = '3677bed892474b30b7a122242220806';
  Future<WeatherModel>? getWeather(  {required String? location}) async {
    final url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$location&days=7');

    var response = await http.get(url);
    var weatherData = jsonDecode(response.body);
    print(weatherData);

      return WeatherModel.fromJson(weatherData);


  }
}
