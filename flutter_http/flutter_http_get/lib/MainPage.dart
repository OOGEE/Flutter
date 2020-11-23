import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  String text = "";

  void GetData() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/todos/1');
    setState(() {
      text = response.body;
    });
  }

  @override
  void initState() {
    super.initState();
    GetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("http get"),
      ),
      body: Center(
        child: Container(
          child: Text(text),
        ),
      ),
    );
  }
}
