import 'package:flutter/material.dart';
import 'package:green_sorter_app/screens/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}

















