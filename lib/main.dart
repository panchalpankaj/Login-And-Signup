
import 'package:flutter/material.dart';
import 'package:sig_log/Login.dart';
import 'package:sig_log/SignUp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Login',
    routes: {
      'Login':(context)=>MyLogin(),
      'SignUp':(context)=> Myregister(),
    },
  ));
}


