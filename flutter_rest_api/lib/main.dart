import 'package:flutter/material.dart';
import 'package:flutter_rest_api/provider/authProvider/auth_provider.dart';
import 'package:flutter_rest_api/screens/splash/splash_screen.dart';
import 'package:flutter_rest_api/styles/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AuthenticationProvider() ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color:primaryColor
            ),
            primaryColor: primaryColor
          ),
          home: const SplashScreen(),
        ),
    );
  }
}


