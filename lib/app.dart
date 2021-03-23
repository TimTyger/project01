import 'package:flutter/material.dart';
import 'package:project01/Pages/login_page.dart';
import 'package:project01/Utilities/constants.dart';
import 'package:project01/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class App extends StatefulWidget {
  static const String routeName = "/app";
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int i = 0;

  final barColor = const Color(0xFF120E43);
  final bgColor = const Color(0x8C3944F7);
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  // TextEditingController _textController = TextEditingController();
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: barColor,
      ),
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: barColor,
        //   child: Icon(Icons.send),
        //   onPressed: () {
        //     setState(() {
        //       i++;
        //       text = _textController.text;
        //     });
        //   },
        // ),
        appBar: AppBar(
          title: Text('DAVERA'),
          backgroundColor: barColor,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  Constants.prefs.setBool("loggedIn", false);
                  Navigator.pushReplacementNamed(context, Login.routeName);
                })
          ],
        ),
        body: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
        drawer: MyDrawer(),
      ),
    );
  }
}
