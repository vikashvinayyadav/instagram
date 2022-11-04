import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthMethods{
   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

    Future<String> signUpUser({
      required String email,
      required String username,
      required String name,
      required String password,
    })async{
      String result = 'Some error occured';
        try{
         if(email.isNotEmpty || 
            username.isNotEmpty || 
            name.isNotEmpty || 
            password.isNotEmpty
            ){
               UserCredential cred = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
                _firebaseFirestore.collection('users').doc(cred.user!.uid).set({
                  'userId':cred.user!.uid,
                  'name':name,
                  'email':email,
                  'username':username,
                  'password':password,
                });
              result = 'success';
            }else{
              result = 'Please enter every field';
            }
        }catch(e){
           print(result);
        }

      return result;
    }

}