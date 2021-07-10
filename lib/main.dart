
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home/home_screen.dart';
import 'package:flutter_application_3/screens/userDetails/user_details_screen.dart';

void main() {
  runApp(appRoot());
}

Widget appRoot() {
  ThemeData appTheme = ThemeData(brightness: Brightness.light);
  return MaterialApp(
      theme: appTheme, debugShowCheckedModeBanner: false, 
      home: HomeScreen(),
      routes: {"/details":(context)=>Details()},
      );
}
//navigate with named