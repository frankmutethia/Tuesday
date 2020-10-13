/* import 'package:firebase/screens/dashboard_screen.dart';
import 'package:firebase/screens/login_screen.dart';
import 'package:flutter/screens/signup_screen.dart'; */
import 'package:flutter/material.dart';
import 'package:msafiri/screens/google_maps.dart';
import 'package:msafiri/screens/home_screen.dart';
import 'package:msafiri/screens/signup_screen.dart';
import 'package:msafiri/screens/login_screen.dart';
import 'package:msafiri/screens/settings_screen.dart';
import 'package:msafiri/screens/splash_screen.dart';
import 'package:msafiri/screens/travel_screen.dart';
import 'package:msafiri/screens/welcome_screen.dart';
import 'package:msafiri/services/auth_services.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Msafiri',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar.
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        SettingScreen.id: (context) => SettingScreen(),
        TravelScreen.id: (context) => TravelScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        MyHomePage.id: (context) => MyHomePage(),
      },
    );
  }
}
