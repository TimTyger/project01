import 'package:flutter/material.dart';
import 'package:project01/Pages/login_page.dart';
import 'package:project01/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Login.routeName: (context) => Login(),
        App.routeName: (context) => App(),
      },
    );
  }
}
