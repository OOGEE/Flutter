import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Drawer Head',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            FlatButton(
              child: Row(
                children: [Icon(Icons.access_alarm), Text("   Alarm")],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Row(
                children: [Icon(Icons.account_box_rounded), Text("   Account")],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            FlatButton(
              child: Row(
                children: [Icon(Icons.add_a_photo_rounded), Text("   Photo")],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Row(
                children: [Icon(Icons.add_call), Text("   Call")],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
