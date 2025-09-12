import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/shoes_enum.dart';
import 'package:flutter_application_1/models/shoes.dart';
import 'package:flutter_application_1/screens/form_home_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/loading_home_screen.dart';
import 'package:flutter_application_1/screens/product_card_screen.dart';


void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingHomeScreen());
          
  }
}






