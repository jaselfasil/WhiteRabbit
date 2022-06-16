import 'package:flutter/material.dart';

Color bgColor = Colors.black;
Color bgColor2 = Colors.white;
const String employeeUrl = "https://run.mocky.io/v3/d2f09150-6abe-485d-ad5e-477d480c7a71";
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