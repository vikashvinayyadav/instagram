import 'package:flutter/material.dart';
import 'package:instagram/widgets/text_type_input.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});
   @override
     SignUpScreenState createState()=> SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen>{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   @override
  Widget build(BuildContext context)=>Scaffold(
    resizeToAvoidBottomInset:false,
    body:Container(
      padding:const EdgeInsets.symmetric(horizontal:32),
      child:Column(
        children: [
          Flexible(flex:2,child:Container()),
          Container(
            margin:const EdgeInsets.symmetric(horizontal:32),
            child:Image.asset(
              'lib/assets/logo.png',
              color:Colors.white
            ),
          ),
          const SizedBox(height:64),
          TextTypeInput(
            controller:nameController, 
            hintText:'Enter your name', 
            textInputType:TextInputType.text,
            isPass: false
          ),
          const SizedBox(height:24),
          TextTypeInput(
          controller:emailController, 
          hintText:'Enter your email', 
          textInputType:TextInputType.emailAddress, 
          isPass:false
          ),
          const SizedBox(height:24),
          TextTypeInput(
          controller:usernameController, 
          hintText:'Enter your username', 
          textInputType:TextInputType.text, 
          isPass:false
          ),
          const SizedBox(height:24),
          TextTypeInput(
            controller:passwordController, 
            hintText:'Enter your password', 
            textInputType:TextInputType.text, 
            isPass:true
            ),
          const SizedBox(height:32),
           GestureDetector(
            onTap:(){},
            child:Container(
              alignment:Alignment.center,
              height:48,
              decoration:const ShapeDecoration(
                color:Colors.blue,
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(8)),
                ),
              ),
              child:const Text('Sign Up',style:TextStyle(
                fontSize: 24
              )),
            ),
           ),
          const SizedBox(height:24),
          Flexible(flex:2,child:Container()),
          Row(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              const Text('I have already a account ? ',style:TextStyle(
                fontSize:19,
              ),),
              GestureDetector(
                onTap:(){},
                child:const Text('Sign In',style:TextStyle(
                  color:Colors.blue,
                  fontSize:19.5
                )),
              )
            ],
          ),
        ],
      ),
    ),
  );
}