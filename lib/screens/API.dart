
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reguforecast/providers/forecast.dart';


class API extends StatefulWidget {
  
  
  @override
  
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {

  @override 
  Widget build(BuildContext context) {
    final forecast= Provider.of<WeatherProvider>(context, listen: true);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 800,
            width: double.infinity,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(children: [
              Container(
                height: 36,
                width: double.infinity,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.green,
                child: Text('FORECAST',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
              ),
              
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromARGB(0, 230, 60, 60),
                child: Row(children: [
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        child: Text(forecast.foredate0,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23)),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        child: Row(children: [
                        Container(
                          height: 50,
                          width: 125,
                          child: Image(image: NetworkImage('http:${forecast.foreicon0}')),
                        ),
                        Container(
                          height: 25,
                          width: 125,
                          child: Text('${forecast.foretemp0} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
                        ),
                      ],),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      alignment: Alignment.center,
                      child: Text(forecast.foretext0,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                     ),
                    ],),
                  ),
                 
                ],),
              ),
              
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromARGB(0, 158, 158, 158),
                child: Row(children: [
                  Container(
                    height: 150,
                    width: 110,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        child: Text(forecast.foredate1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23)),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        child: Row(children: [
                        Container(
                          height: 50,
                          width: 125,
                          child: Image(image: NetworkImage('http:${forecast.foreicon1}')),
                        ),
                        Container(
                          height: 25,
                          width: 125,
                          child: Text('${forecast.foretemp1} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
                        ),
                      ],),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      alignment: Alignment.center,
                      child: Text(forecast.foretext1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                     ),
                    ],),
                  ),
                ],),
              ),
              Container(
                  height: 20,
                  width: double.infinity,
                  color: Color.fromARGB(0, 33, 149, 243),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromARGB(0, 158, 158, 158),
                child: Row(children: [
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        child: Text(forecast.foredate2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23)),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        alignment: Alignment.center,
                        child: Row(children: [
                        Container(
                          height: 50,
                          width: 125,
                          child: Image(image: NetworkImage('http:${forecast.foreicon2}')),
                        ),
                        Container(
                          height: 25,
                          width: 125,
                          child: Text('${forecast.foretemp2} °C', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
                        ),
                      ],),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      alignment: Alignment.center,
                      child: Text(forecast.foretext2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                     ),
                    ],),
                  ),
                  
                ],),
              ),
              
             
            ],),
          )
        ],
      )
    );
  }
}