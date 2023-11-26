import 'package:flutter/material.dart';
import 'package:flutter_task/screens/screen1.dart';
import 'package:flutter_task/screens/screen2.dart';
import 'package:flutter_task/screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    routes:{
        ScreenOne.routeName:(_)=> ScreenOne(),
      ScreenTwo.routeName:(_)=>const ScreenTwo(),
      ScreenThree.routName:(_)=> ScreenThree()


    } ,
initialRoute: ScreenOne.routeName,

    );
  }
}




