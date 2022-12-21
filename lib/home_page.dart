import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog App"),
      ),
      drawer: Drawer(),
      body: Container(
        child: Center(
          child: Text("Welcome to $day of flutter course"),
        ),
      ),
    );
  }
}
