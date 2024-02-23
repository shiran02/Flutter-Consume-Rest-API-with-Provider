import 'package:flutter/material.dart';
import 'package:flutter_rest_api/styles/colors.dart';


void showMessage({BuildContext? context , String? message}){
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
    content: Text(
      message!,
      style: TextStyle(
        color: white
      ),
    ),
    backgroundColor : primaryColor
  ));
}