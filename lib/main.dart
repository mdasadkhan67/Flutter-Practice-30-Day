import 'package:flutter/material.dart';
import 'package:thirtyday/home_page.dart';

void main() {
  runApp(ThirtyDayApp());
}

class ThirtyDayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
