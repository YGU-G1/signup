import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/sign.dart';


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
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 13, 13, 14)),
        useMaterial3: true,
      ),
      home: Sign()
    );
  }
}

