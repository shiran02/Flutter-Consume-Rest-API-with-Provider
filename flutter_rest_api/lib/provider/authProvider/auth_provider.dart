import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rest_api/constants/url.dart';
import 'package:http/http.dart' as http;

class AuthenticationProvider with ChangeNotifier {
  //base url ..............................
  static String baseUrl = AppUrl.baseUrl;

  //setter ................................
  bool _isLoading = false;
  String _resetMessage = "";

  //getter ................................

  bool get isLoading => _isLoading;
  String get resMessage => _resetMessage;

  void registerUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    BuildContext? context,
  }) async {


    _isLoading = true;
    notifyListeners();

    String url = "$baseUrl/users/";

    final body = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password
    };

    print(body);

    try{

      http.Response response = await http.post(
        Uri.parse(url),
        body: json.encode(body)
        );

        if(response.statusCode == 200 || response.statusCode == 201){
          final res = json.decode(response.body);
          print(res.body);
          _isLoading = false;
          _resetMessage = "Register successfully";
        }else{
          final res = json.decode(response.body);
          _resetMessage = res['message'];
          print(res);

        }
     
    }on SocketException catch(_){

       _isLoading = false;
      _resetMessage = "Internet connection is not available";
      notifyListeners();
      
    }catch(e){
        _isLoading = false;
      _resetMessage = "please try again";
      notifyListeners();
      print(e);
    }
  }




    void loginUser({
    required String email,
    required String password,
    BuildContext? context,
  }) async {


    _isLoading = true;
    notifyListeners();

    String url = "$baseUrl/users/login";

    final body = {
      "email": email,
      "password": password
    };

    print(body);

    try{

      http.Response response = await http.post(
        Uri.parse(url),
        body: json.encode(body)
        );

         print(response.body);

        if(response.statusCode == 200 || response.statusCode == 201){
          final res = json.decode(response.body);
          print(res.body);
          _isLoading = false;
          _resetMessage = "Login successfully";
          _resetMessage = res['message'];

        }else{
          final res = json.decode(response.body);
          _resetMessage = res['message'];
          
          print(res);

        }
     
    }on SocketException catch(_){

       _isLoading = false;
      _resetMessage = "Internet connection is not available";
      notifyListeners();
      
    }catch(e){
        _isLoading = false;
      _resetMessage = "please try again";
      notifyListeners();
      print(e);
    }
  }
}
