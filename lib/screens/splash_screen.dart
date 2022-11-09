import 'package:flutter/material.dart';
import 'package:instagram/screens/main_screen.dart';

class SplashScreen extends StatefulWidget{
   const SplashScreen({super.key});
   @override 
     SplashScreenState createState()=> SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{
   @override 
     void initState(){
       super.initState();
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
           Future.delayed(const Duration(seconds:3),()=> navigateToMain());
        });
     }

     navigateToMain(){
       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MainScreen()));
     }
   @override
  Widget build(BuildContext context)=>Scaffold(
    body:Container(
       padding:const EdgeInsets.symmetric(horizontal:32),
      child:Center(
        child:Image.asset(
          'lib/assets/logo.png',
          color:Colors.white
        )
      ),
    ),
  );
}