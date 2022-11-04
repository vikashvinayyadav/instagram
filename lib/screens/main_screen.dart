import 'package:flutter/material.dart';
import 'package:instagram/screens/signup_screen.dart';

class MainScreen extends StatefulWidget{
   @override 
     MainScreenState createState()=> MainScreenState();
}

class MainScreenState extends State<MainScreen>{
   @override
  Widget build(BuildContext context) {
    return SignUpScreen();
  }
}