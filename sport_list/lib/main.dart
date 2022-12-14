import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_list/route_generator.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}