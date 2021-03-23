import 'package:flutter/material.dart';
import 'package:project01/Pages/login_page.dart';
import 'package:project01/Utilities/constants.dart';
import 'package:project01/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true ? App() : Login(),
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
