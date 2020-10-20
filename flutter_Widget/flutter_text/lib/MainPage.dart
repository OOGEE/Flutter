import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  final TextFieldController1 = TextEditingController();
  final TextFieldController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: ListView(
        children: [
          Text(
            "Text",
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                backgroundColor: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
          Divider(),
          RichText(
            text: TextSpan(
                text: 'This',
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: ' is',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' Text', style: TextStyle(color: Colors.blue)),
                  TextSpan(text: ' Span'),
                ]),
          ),
          Divider(),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: TextFieldController1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ID',
              labelStyle: TextStyle(),
              hintText: 'ID를 입력하세요',
              hintStyle: TextStyle(),
              helperText: 'ID를 입력하세요',
              helperStyle: TextStyle(),
              prefixIcon: Icon(Icons.account_box),
              suffixIcon: InkWell(
                onTap: () => TextFieldController1.clear(),
                child: Icon(Icons.cancel),
              ),
            ),
          ),
          Divider(),
          TextField(
            style: TextStyle(color: Colors.blue),
            maxLength: 10,
            keyboardType: TextInputType.number,
            obscureText: true,
            controller: TextFieldController2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'PassWord',
              hintText: '비밀번호를 입력하세요',
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: InkWell(
                onTap: () => TextFieldController2.clear(),
                child: Icon(Icons.cancel),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
