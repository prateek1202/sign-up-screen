import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'signin_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => SignupScreen(),
      SigninScreen.routeName: (context) => SigninScreen(),
      SignupScreen.routeName: (context) => SignupScreen()
    },
  ));
}
