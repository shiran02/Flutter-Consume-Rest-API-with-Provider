import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavigator{
  BuildContext context;
  PageNavigator({required this.context});

  // Navigator to Next page

  Future nextPage({Widget? page}){
    return Navigator.push(context, CupertinoPageRoute(builder: ((context) => page! )));
  }

  Future nextPageOnly({Widget? page}){
    return Navigator.pushAndRemoveUntil(
      context, 
      CupertinoPageRoute(builder: ((context) => page! )),
      (route) => false
      );
  }


}