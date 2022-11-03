import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/main_screen.dart';
import '../utilis/colors.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
   if(kIsWeb){
     await Firebase.initializeApp(
      options:const FirebaseOptions(
        apiKey:"AIzaSyBjKIA41aULT9tKKV5l1Oxikzi2qD9LLQI", 
        appId:"1:17950484937:web:3d16c98c9b1486644d6018",
        messagingSenderId: "17950484937", 
        projectId:"instagram-50a2a",
      ),
     );
   }else{
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
   return  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData.dark().copyWith(
      scaffoldBackgroundColor:mobileBackgroundColor,
    ),
    home:MainScreen(),
   );
  }
}