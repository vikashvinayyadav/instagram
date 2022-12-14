import 'package:flutter/material.dart';
import 'package:instagram/widgets/text_type_input.dart';

class SignInScreen extends StatefulWidget{
 const SignInScreen({super.key});
  @override
   SignInScreenState createState ()=> SignInScreenState();
}

class SignInScreenState extends State<SignInScreen>{
   final TextEditingController emailController1 = TextEditingController();
   final TextEditingController passwordController1 = TextEditingController();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body:Container(
        padding:const EdgeInsets.symmetric(horizontal:32),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
             Flexible(
              flex:2,
              child:Container()
            ),
             Container(
              margin:const EdgeInsets.symmetric(horizontal:32),
              child:Image.asset(
                'lib/assets/logo.png',
                color:Colors.white,
              ),
             ),
             const SizedBox(height:64),
             TextTypeInput(
              controller:emailController1, 
              hintText:'Enter your email', 
              textInputType:TextInputType.emailAddress, 
              isPass:false
            ),
            const SizedBox(height:24),
            TextTypeInput(
              controller:passwordController1, 
              hintText:'Enter your password', 
              textInputType:TextInputType.text, 
              isPass:true
            ),
            const SizedBox(height:32,),
            GestureDetector(
              onTap:(){},
              child:Container(
                width:double.infinity,
                height:48,
                decoration:const ShapeDecoration(
                  color:Colors.blue,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                alignment:Alignment.center,
                child:const Text('Sign In',style:TextStyle(
                  fontSize:24,
                )),
              ),
            ),
             Flexible(
              flex:2,
              child:Container()
            ),
             Container(
              padding:const EdgeInsets.only(left:5,right:5),
              child:Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                const Text('I have not any account ? ',style:TextStyle(
                  fontSize:19
                )),
                GestureDetector(
                  onTap: (){},
                  child:const Text('Sign Up',style:TextStyle(
                    fontSize: 20,
                    color:Colors.blue,
                  )),
                )
              ],
             )),
          ],
        ),
      ),
    );

  }
}