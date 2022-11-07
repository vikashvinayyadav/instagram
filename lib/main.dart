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
    return const MaterialApp(
      home:Scaffold(
        body:Center(child:Text('All india radio')),
      ),
    );
  }
}