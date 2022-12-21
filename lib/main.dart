import 'package:flutter/material.dart';

void main() {
  runApp(ThirtyDayApp());
}

class ThirtyDayApp extends StatelessWidget {
  const ThirtyDayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("30 Day Practice"),
        ),
        body: Center(
          child: Text("Welcome to prctice app"),
        ),
      ),
    );
  }
}
