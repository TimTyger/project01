import 'package:flutter/material.dart';

final barColor = const Color(0xFF120E43);
final bgColor = const Color(0x8C3944F7);

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
