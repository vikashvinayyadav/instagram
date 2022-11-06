import 'package:flutter/material.dart';
import 'package:instagram/resources/auth_methods.dart';
import 'package:instagram/utilis/global_variables.dart';
import 'package:instagram/widgets/text_type_input.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});
   @override 
     SignUpScreenState createState()=> SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen>{
 final TextEditingController _nameController = TextEditingController();
 final TextEditingController _usernameController = TextEditingController();
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();
 bool isLoading =false;
  @override 
    void dispose(){
      super.dispose();
      _nameController.dispose();
      _usernameController.dispose();
      _emailController.dispose();
      _passwordController.dispose();
    }

    Future<void> signUpUser() async {
       setState(() {
          isLoading =true;
       });
       String result = await AuthMethods().signUpUser(email:_emailController.text, username:_usernameController.text, name:_nameController.text, password:_passwordController.text);
        if(result =='success'){
           setState(() {
              isLoading = false;
           });
       }else{
           setState(() {
              isLoading = false;
           });
       }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body:Container(
        width:double.infinity,
        padding:MediaQuery.of(context).size.width > webScreenSize ? EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width /3):
        const EdgeInsets.symmetric(horizontal:32),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children:[
            Flexible(
              flex:2,
              child:Container()
            ),
            Container(
              margin:const EdgeInsets.symmetric(
                horizontal:32,vertical:24),
              child:Image.asset(
                'lib/assets/logo.png',
                 color:Colors.white,
              ),
            ),
            const SizedBox(height:50),
          
            const SizedBox(height:36),
            TextTypeInput(
              hintText:'Enter your name', 
              ispass:false, 
              textController:_nameController, 
              textTypeInput:TextInputType.text,
            ),
          const SizedBox(height:24),
          TextTypeInput(
            hintText:'Enter your username', 
            ispass:false, 
            textController:_usernameController, 
            textTypeInput:TextInputType.text
            ),
          const SizedBox(height:24),
          TextTypeInput(
            hintText:'Enter your email', 
            ispass:false, 
            textController:_emailController, 
            textTypeInput:TextInputType.emailAddress,
           ),
          const SizedBox(height:24),
          TextTypeInput(
            hintText:'Enter your password',
            ispass:true, 
            textController:_passwordController,
            textTypeInput:TextInputType.text
           ),
           const SizedBox(height:32),
           GestureDetector(
            onTap:signUpUser,
            child: Container(
              width:double.infinity,
              alignment:Alignment.center,
              height:60,
              padding:const EdgeInsets.symmetric(vertical:12),
              decoration:const ShapeDecoration(
                color:Colors.blue,
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(4))
                ),
              ),
              child:!isLoading ?const Text(
                'Sign Up',
                style:TextStyle(
                  fontSize:26,
                  letterSpacing:1.1,  
              ),
            ): const CircularProgressIndicator(color:Colors.white,)
           )),
           const SizedBox(height:12,),
           Flexible(flex:2,child:Container()),
           Container(
            padding:const EdgeInsets.symmetric(vertical:8),
            child:Row(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              const Text('I have already a account ? ',style:TextStyle(
                fontSize:24,
              ),),
              GestureDetector(
                onTap:(){},
                child:const Text('Sign In',style:TextStyle(
                  color:Colors.blue,
                  fontSize:26,
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