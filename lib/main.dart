import 'package:flutter/material.dart';
import 'package:thirtyday/home_page.dart';
import 'package:thirtyday/screens/login_page.dart';
import 'package:thirtyday/utils/routes.dart';
import 'package:thirtyday/widgets/themedata.dart';

void main() {
  runApp(ThirtyDayApp());
}

class ThirtyDayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme(context),
      darkTheme: AppThemeData.darkTheme(context),
      initialRoute: AppRoutes.homePage,
      routes: {
        "/": (context) => LoginPage(),
        AppRoutes.homePage: (context) => HomePage(),
        AppRoutes.loginPage: (context) => LoginPage()
      },
    );
  }
}
