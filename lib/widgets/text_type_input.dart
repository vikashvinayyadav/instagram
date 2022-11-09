import 'package:flutter/material.dart';

class TextTypeInput extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool isPass;

  const TextTypeInput({
   super.key,
   required this.controller,
   required this.hintText,
   required this.textInputType,
   required this.isPass
});
   @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide:Divider.createBorderSide(context),
    );
    return TextField(
       decoration:InputDecoration(
         hintText:hintText,
         border:inputBorder,
         enabledBorder:inputBorder,
         focusedBorder:inputBorder,
         filled:true,
         contentPadding:const EdgeInsets.all(8),
       ),
       keyboardType:textInputType,
       obscureText:isPass,
    );
  }
}