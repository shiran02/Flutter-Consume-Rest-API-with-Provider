import 'package:flutter/material.dart';
import 'package:flutter_rest_api/styles/colors.dart';

Widget CustomTextField(
  {
    String? title,
    String? hint,
    TextEditingController? controller,
    int? maxLine = 1
  }
){
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          title!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: black
          ),
        )
      ),

      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: lightGrey
        ),
        child: TextFormField(
          controller: controller,
          maxLines: maxLine,
          decoration: InputDecoration(hintText: hint , border: InputBorder.none),
        ),
      ),
    ],
  );
}