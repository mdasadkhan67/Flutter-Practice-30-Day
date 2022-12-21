import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirtyday/home_page.dart';
import 'package:thirtyday/screens/login_page.dart';

void main() {
  runApp(ThirtyDayApp());
}

class ThirtyDayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
