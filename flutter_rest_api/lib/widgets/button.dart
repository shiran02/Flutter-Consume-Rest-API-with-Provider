import 'package:flutter/material.dart';
import 'package:flutter_rest_api/styles/colors.dart';

Widget CustomButotm({
  VoidCallback? tap,
  bool? status = false,
  String? text = 'Save',
  BuildContext? context,
}){
  return Container(
    height: 48,
    width: MediaQuery.of(context!).size.width,
    margin: EdgeInsets.symmetric(vertical: 15),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: status == false ? primaryColor : grey,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Text(
      status == false ?  text! : 'please wait',
      style: TextStyle(color: white , fontSize: 18),
    ),
  );
}