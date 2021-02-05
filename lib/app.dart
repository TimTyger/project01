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
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              //DrawerHeader(
              // child: Text('MENU', style: TextStyle(color: Colors.white)),
              // decoration: BoxDecoration(
              //   color: barColor,
              // ),
              //),
              UserAccountsDrawerHeader(
                accountName: Text('Timtyger'),
                accountEmail: Text('timtyger796@gmail.com'),
                //currentAccountPicture: Image.network('')
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
                decoration: BoxDecoration(
                  color: barColor,
                ),
                margin: const EdgeInsets.only(bottom: 0),
              ),
              //ListTile(
              //  tileColor: barColor,
              //),
              ListTile(
                tileColor: barColor,
                title: Text('MENU', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                selectedTileColor: barColor,
                leading: Icon(Icons.shopping_bag, color: barColor),
                title: Text('Shop By Category'),
                subtitle: Text('categories'),
                trailing: Icon(Icons.arrow_right, color: barColor),
                onTap: () {},
              ),
              ListTile(
                selectedTileColor: barColor,
                leading: Icon(Icons.phone, color: barColor),
                title: Text('Contact Us'),
                trailing: Icon(Icons.arrow_right, color: barColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
