//import 'package:flutter_application_1/screens/contador_screen.dart';
//import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:S05/screens/lab_05.dart';

void main(){
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LabScreen()
    );
  }
}
