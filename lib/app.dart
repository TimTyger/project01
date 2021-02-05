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
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      gradient: LinearGradient(
                          colors: [Colors.amberAccent, barColor]),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.grey)
                      ]),
                  alignment: Alignment.center,
                  child: Text('$i',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))),
              Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      gradient: LinearGradient(
                          colors: [Colors.amberAccent, barColor]),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.grey)
                      ]),
                  alignment: Alignment.center,
                  child: Text('$i',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))),
              Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      gradient: LinearGradient(
                          colors: [Colors.amberAccent, barColor]),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.grey)
                      ]),
                  alignment: Alignment.center,
                  child: Text('$i',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))),
            ],
          ),
        ),
      ),
    );
  }
}
