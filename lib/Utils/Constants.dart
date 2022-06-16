import 'package:flutter/material.dart';

Color bgColor = Colors.black;
Color bgColor2 = Colors.white;
const String employeeUrl = "http://www.mocky.io/v2/5d565297300000680030a986";
double textFeild_height = 42;
TextStyle contentStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.black
);
AppBar appBar(String title){
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.black,
    centerTitle: true,
  );
}