import 'package:flutter/material.dart';
import 'package:instagram/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram/screens/signup_screen.dart';

class MainScreen extends StatefulWidget{
   @override 
     MainScreenState createState()=> MainScreenState();
}

class MainScreenState extends State<MainScreen>{
   @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:FirebaseAuth.instance.authStateChanges(),
      builder:(BuildContext context , AsyncSnapshot<User?> snapshot){
        // this is when firebase connection is active with the application
          if(snapshot.connectionState == ConnectionState.active){
             if(snapshot.hasData){
               return const Text('Center your Mind');
             }else if(snapshot.hasError){
               // this is when snapshot or firebase provide no data or any problem to provide data with application
                 
                return const Scaffold(
                   body:Center(
                    child:Text(
                      'Please first connect your database',
                    ),
                   ),
                );
             }
          }

          // this is when firebase connection is not connect with the application
          // It take few minute to connect with application or processing to connect connection
           
            if(snapshot.connectionState == ConnectionState.waiting){
               return const Scaffold(
                body:Center(
                  child:CircularProgressIndicator(),
                ),
               );
            }
         return const SignUpScreen();
      },
    );
  }
}