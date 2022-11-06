import 'package:flutter/material.dart';
import 'package:instagram/screens/signup_screen.dart';
import 'package:instagram/screens/signin_screen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});
   @override 
     MainScreenState createState()=> MainScreenState();
}

class MainScreenState extends State<MainScreen>{
   @override
  Widget build(BuildContext context) {
    return const SignUpScreen();
  }
}