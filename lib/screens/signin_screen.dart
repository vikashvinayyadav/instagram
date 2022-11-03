import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget{
  
   @override 
     SignInScreenState createState()=> SignInScreenState();
}

class SignInScreenState extends State<SignInScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Column(
          children:[
            Container(
              child:Image.asset('lib/assets/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}