import 'package:flutter/material.dart';
import 'package:thirtyday/home_page.dart';
import 'package:thirtyday/screens/login_page.dart';

void main() {
  runApp(ThirtyDayApp());
}

class ThirtyDayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "login": (context) => LoginPage(),
        "home": (context) => HomePage(),
      },
    );
  }
}
