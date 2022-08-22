import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//http://api.weatherapi.com/v1/forecast.json?key=a1fc9e6c652b4edfaab143006222507&q=Durango&days=5&aqi=no&alerts=no

//PARTE DE LA API
class WeatherProvider extends ChangeNotifier{
  final String _key = 'a1fc9e6c652b4edfaab143006222507';
  final String _baseURL = 'api.weatherapi.com';
  final String _q = 'Durango';
  final String _days = '5';
  final String _aqi = 'no';
  final String _alerts = 'no';

  String foretemp0 = "";
  String foreicon0 = "";
  String foredate0 = "";
  String foretext0 = "";

  String foretemp1 = "";
  String foreicon1 = "";
  String foredate1 = "";
  String foretext1 = "";

  String foretemp2 = "";
  String foreicon2 = "";
  String foredate2 = "";
  String foretext2 = "";

  WeatherProvider(){
    this.getWeather();
  }
  getWeather() async {
    var URL = Uri.https(_baseURL,'v1/forecast.json',{ 'key':_key, 'q':_q, 'days':_days, 'aqi':_aqi, 'alerts':_alerts});
    var response = await http.get(URL);
    if (response.statusCode == 200) {
      final Map<String,dynamic> jsonResponse = json.decode(response.body);
      print(jsonResponse);
      print('');
      print('');
      print('');
      print('');
      final date0 = jsonResponse["forecast"]["forecastday"][0]["date"];
      final temp0 = jsonResponse["forecast"]["forecastday"][0]["day"]["avgtemp_c"];
      final icon0 = jsonResponse["forecast"]["forecastday"][0]["day"]["condition"]["icon"];
      final text0 = jsonResponse["forecast"]["forecastday"][0]["day"]["condition"]["text"];

      final date1 = jsonResponse["forecast"]["forecastday"][1]["date"];
      final temp1 = jsonResponse["forecast"]["forecastday"][1]["day"]["avgtemp_c"];
      final icon1 = jsonResponse["forecast"]["forecastday"][1]["day"]["condition"]["icon"];
      final text1 = jsonResponse["forecast"]["forecastday"][1]["day"]["condition"]["text"];

      final date2 = jsonResponse["forecast"]["forecastday"][2]["date"];
      final temp2 = jsonResponse["forecast"]["forecastday"][2]["day"]["avgtemp_c"];
      final icon2 = jsonResponse["forecast"]["forecastday"][2]["day"]["condition"]["icon"];
      final text2 = jsonResponse["forecast"]["forecastday"][2]["day"]["condition"]["text"];

      //Forecast;
      foretemp0 = temp0.toString();
      foreicon0 = icon0;
      foredate0 = date0;
      foretext0 = text0;

      foretemp1 = temp1.toString();
      foreicon1 = icon1;
      foredate1 = date1;
      foretext1 = text1;

      foretemp2 = temp2.toString();
      foreicon2 = icon2;
      foredate2 = date2;
      foretext2 = text2;

      notifyListeners();
      }else{
        print('request failed by status:${response.statusCode}');
    }
  }
}
