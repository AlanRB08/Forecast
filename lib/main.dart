import 'package:flutter/material.dart';
import 'package:reguforecast/providers/forecast.dart';
import 'package:reguforecast/screens/API.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget{
  const AppState({Key? key}) :super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) =>WeatherProvider(), lazy: false,)
    ],
    child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FORECAST',
      initialRoute: 'api',
      routes: {
      'api': ( _ ) => API(),

      },
      theme: ThemeData(scaffoldBackgroundColor: Colors.green),
      );
  }
}
