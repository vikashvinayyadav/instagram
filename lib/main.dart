import 'package:flutter/material.dart';
import 'package:instagram/screens/splash_screen.dart';

void main(){
  runApp(
    const MyApp(),
  );
}

// this is root of your application 

class MyApp extends StatelessWidget{
   const MyApp({super.key});
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Colors.black,
      ),
      home:const SplashScreen(),
    );
  }
}