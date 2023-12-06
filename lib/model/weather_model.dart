class WeatherModel {
  String? name;
  String? date;
  double? temp;
  double? maxTemp;
  double? minTemp;
  String? condition;
  String? icon;
  int? humidity;
  double? windSpeed;
  double? pressure;

  WeatherModel(
      {required this.name,
        required this.date,
        required this.temp,
        required this.maxTemp,
        required this.minTemp,
        required this.condition,
        required this.icon,
        required this.humidity,
        required this.windSpeed,
        required this.pressure});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    var weatherData = json['forecast']['forecastday'][0];
    name = json['location']['name'];
    date = json['location']['localtime'];
    temp = weatherData['day']['avgtemp_c'];
    maxTemp = weatherData['day']['maxtemp_c'];
    minTemp = weatherData['day']['mintemp_c'];
    condition = weatherData['day']['condition']['text'];
    icon = weatherData['day']['condition']['icon'];
    humidity = json['current']['humidity'];
    pressure = json['current']['pressure_in'];
    windSpeed = json['current']['wind_kph'];
  }

  @override
  String toString() {
    return "date = $date , temp = $temp";
  }
}