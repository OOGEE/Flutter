import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  String text = "flutter http post data";
  final userIdField = TextEditingController();
  final IdField = TextEditingController();
  final titleField = TextEditingController();
  final bodyField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("http post"),
      ),
      body: ListView(
        children: [
          Container(
            child: TextField(
              controller: userIdField,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "UserID를 입력하세요"
              ),
            ),
          ),
          Container(
            child: TextField(
              controller: IdField,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "ID를 입력하세요"
              ),
            ),
          ),
          Container(
            child: TextField(
              controller: titleField,
              decoration: InputDecoration(
                  hintText: "title을 입력하세요"
              ),
            ),
          ),
          Container(
            child: TextField(
              controller: bodyField,
              decoration: InputDecoration(
                  hintText: "body를 입력하세요"
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("Post 버튼"),
              onPressed: () => PostData(),
            ),
          ),
          Container(
            child: Text(text),
          )
        ],
      ),
    );
  }
  void PostData() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: <String, String>{
        'userId': userIdField.text,
        'id': IdField.text,
        'title': titleField.text,
        'body': bodyField.text,
      },
    );
    setState(() {
      text = response.body;
    });
  }
}