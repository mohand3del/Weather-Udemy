import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather_udemy/provider/weather_provider.dart';
import 'package:weather_udemy/view/home_screen_no_data.dart';
import 'package:weather_udemy/view/search_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  String? location;

  @override
  Widget build(BuildContext context) {
    var weatherData =
        Provider.of<WeatherProvider>(context, listen: true).weatherProvider;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchScreen();
              }));
            },
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: weatherData == null
          ? const HomeNoData()
          : Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 140,
                      height: 140,
                      child: Image.network(
                        "https:${weatherData.icon}",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "${weatherData.temp!.toInt()} °C",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '${weatherData.name.toString()}',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Text(
                    'Additional Information',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Card(
                          color:Color(0xFFFFFFFF) ,
                          elevation: 0,
                          child: Column(
                            children: [
                              Text(
                                "${weatherData.windSpeed}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              Image.asset('assets/images/wind_speed.png', height: 30,
                                width: 30,),
                              Text(
                                "Wind Speed",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Card(
                          color:Color(0xFFFFFFFF) ,
                          elevation: 0,
                          child: Column(
                            children: [
                              Text(
                                "${weatherData.pressure}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              Image.asset('assets/images/pressure.jpg', height: 30,
                                width: 30,),
                              Text(
                                "Pressure",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Card(
                          color:Color(0xFFFFFFFF) ,
                          elevation: 0,
                          child: Column(
                            children: [
                              Text(
                                "${weatherData.humidity}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              Image.asset('assets/images/humidity.png', height: 30,
                                width: 30,),
                              Text(
                                "Humidity",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Card(
                          color:Color(0xFFFFFFFF) ,
                          elevation: 0,
                          child: Column(
                            children: [
                              Text(
                                "${weatherData.maxTemp}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              Image.asset('assets/images/max_temp.png', height: 30,
                                width: 30,),
                              Text(
                                "Max temp",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),

                ],
              ),
            ),
    );
  }
}
