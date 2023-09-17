import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';
import 'dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => checkLoginStatus(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircleAvatar(
          radius: 40,
          child: Image(image: AssetImage('assets/logo.jpg', ), height: 80, width: 80,))
      ),
    );
  }
}

void checkLoginStatus(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool loggedIn = prefs.getBool('LoggedIn') ?? false;
  String name = prefs.getString('name') ?? '';
  int userId = prefs.getInt('userId') ?? 0;
  String school = prefs.getString('school') ?? '';
  String password = prefs.getString('password') ?? '';
  String email = prefs.getString('email') ?? '';

  if (loggedIn) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => DashboardScreen(
          userId: userId,
          name: name,
          email: email,
          school: school,
          password: password,
        ),
      ),
    );
  } else {
    Navigator.pushReplacementNamed(context, '/login');
  }
}