import 'package:flutter/material.dart';
import 'package:flutter_rest_api/screens/authentication/login_screen.dart';
import 'package:flutter_rest_api/utils/routers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
  
  void navigate() {
    Future.delayed(Duration(seconds: 3),(){
      PageNavigator(context: context).nextPageOnly(page: LoginPage());
    }
    
    );
  }
}