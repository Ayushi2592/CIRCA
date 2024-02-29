import 'package:dicee_app/screens/home_screen.dart';
import 'package:dicee_app/screens/login_screen.dart';
import 'package:dicee_app/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(DiceeApp());

class DiceeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
