import 'dart:html';

import 'package:flutter/material.dart';
import 'package:instagram/resources/auth_methods.dart';
import 'package:instagram/utilis/global_variables.dart';
import 'package:instagram/widgets/text_type_input.dart';

class SignInScreen extends StatefulWidget{
  const SignInScreen({super.key});
  @override 
    SignInScreenState createState()=> SignInScreenState();
}

class SignInScreenState extends State<SignInScreen>{
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  bool isLoading =false;
@override
   void dispose(){
     super.dispose();
     _email.dispose();
     _pass.dispose();
   }

  Future<void> signInUser()async {
    setState((){
      isLoading=true;
    });
    String result = await AuthMethods().signInUser(email:_email.text, password:_pass.text);
    if(result =='success'){
       setState(() {
         isLoading=false;
       });
    }else{
      setState(() {
        isLoading=true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Container(
        padding:MediaQuery.of(context).size.width > webScreenSize ? EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/3) :
         const EdgeInsets.symmetric(horizontal:32),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Flexible(
              flex:2,
              child:Container(),
            ),
            Container(
              margin:const EdgeInsets.symmetric(horizontal:32),
              child:Image.asset(
                'lib/assets/logo.png',
                color:Colors.white,
              )
            ),
            const SizedBox(height:64),
            TextTypeInput(
              hintText:'Enter your email', 
              ispass:false, textController:_email, 
              textTypeInput:TextInputType.emailAddress
            ),
            const SizedBox(height:24,),
            TextTypeInput(
              hintText:'Enter your password', 
              ispass:true, 
              textController:_pass, 
              textTypeInput:TextInputType.text),
            const SizedBox(height:32),
            GestureDetector(
              onTap:signInUser,
              child:Container(
                width:double.infinity,
                alignment:Alignment.center,
                height:60,
                padding:const EdgeInsets.symmetric(vertical:12),
                decoration:const ShapeDecoration(
                  color:Colors.blue,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.all(Radius.circular(8))
                  )
                ),
                child:!isLoading ? const Text('Sign In',style:TextStyle(
                  fontSize:26,
                  letterSpacing:1.1,
                )) : const CircularProgressIndicator(color:Colors.white),
              ),
            ),
            const SizedBox(height:24),
            Flexible(flex:2,child:Container()),
            Container(
              padding:const EdgeInsets.symmetric(vertical: 8),
              child:Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                const Text('I have no account ? ',style:TextStyle(
                  fontSize: 24,
                )),
                GestureDetector(
                  onTap:(){},
                  child:const Text('Sign Up',style:TextStyle(
                    color:Colors.blue,
                    fontSize: 26
                  )),
                ),
              ],
            )),
          ],
        ),
       ),
    );
  }
}