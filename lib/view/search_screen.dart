import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_udemy/provider/weather_provider.dart';
import 'package:weather_udemy/services/weather_services.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  String? location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Search for a city',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: [
              TextField(
                onChanged: (data) {
                  location = data;
                },
                onSubmitted: (data) async {
                  location = data;
                  ApiServices services = ApiServices();
                  var weather = await services.getWeather(location: location);
                  Provider.of<WeatherProvider>(context, listen: false)
                      .getWeatherData(weather!);
                  Navigator.pop(context);
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText:"Enter city name",
                  labelText: "search",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                ),
              
              ),
              SizedBox(height: 50,),
              Image.asset('assets/images/animation_llzagy0w_small.gif',height: 200,fit: BoxFit.fill,)
            ],
          ),
        ),
      ),
    );
  }
}
