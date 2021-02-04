import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int i = 0;

  final barColor = const Color(0xFF120E43);
  final bgColor = const Color(0x8C3944F7);

  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: barColor,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            i++;
          });
        },
      ),
      appBar: AppBar(
        title: Text('DAVERA'),
        backgroundColor: barColor,
      ),
      body: Text('$i'),
    ));
  }
}
