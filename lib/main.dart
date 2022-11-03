import 'package:flutter/material.dart';

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
   return  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData.dark().copyWith(
      scaffoldBackgroundColor:Colors.pink,
    ),
    home:const Scaffold(
      body:Center(
        child:Text('hello world')
      ),
    ),
   );
  }
}