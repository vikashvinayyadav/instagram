import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async{
   WidgetsFlutterBinding.ensureInitialized();
    if(kIsWeb){
      // this is for run application in browser
      await Firebase.initializeApp(
        options:const FirebaseOptions(
          apiKey:"AIzaSyBjKIA41aULT9tKKV5l1Oxikzi2qD9LLQI",
          appId:"1:17950484937:web:3d16c98c9b1486644d6018",
          messagingSenderId:"17950484937",
          projectId:"instagram-50a2a",
      ));
    }else{
      // this is for run application and connect with android phones
      await Firebase.initializeApp();
    }
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