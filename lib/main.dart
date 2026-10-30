import 'package:flutter/material.dart';
import 'package:stylish/views/forget_password.dart';
import 'package:stylish/views/login_screen.dart';
import 'package:stylish/views/signup_screen.dart';
import 'package:stylish/views/splash_screen.dart';
import 'package:stylish/views/starter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ForgetPassword(),
    );
  }
}

