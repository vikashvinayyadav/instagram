import 'package:flutter/material.dart';

class TextTypeInput extends StatelessWidget{
 final String hintText;
 final  bool ispass;
 final  textTypeInput;
 final  textController;

 const TextTypeInput({
    Key ? key, 
    required this.hintText,
     required this.ispass,
      required this.textController, 
      required this.textTypeInput
      }):super(key:key);

   @override
  Widget build(BuildContext context) {
    final inputBoder = OutlineInputBorder(
      borderSide:Divider.createBorderSide(context),
    );
    return TextField(
      controller:textController,
      decoration:InputDecoration(
        hintText:hintText,
        hintStyle:const TextStyle(
          fontSize:22,
          letterSpacing:1
        ),
        border:inputBoder,
        enabledBorder:inputBoder,
        disabledBorder:inputBoder,
        filled:true,
        contentPadding:const EdgeInsets.all(12),
      ),
      obscureText:ispass,
      keyboardType: textTypeInput,
    );

  }
}