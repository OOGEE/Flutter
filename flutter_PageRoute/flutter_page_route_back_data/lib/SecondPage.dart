import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  Second createState() => new Second();
}

class Second extends State<SecondPage>{
  List<String> list = new List<String>();
  String FirstData = '', SecondData = '';

  Future<bool> OnBackPressed() {
    list.add(FirstData);
    list.add(SecondData);
    Navigator.pop(context, list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              list.add(FirstData);
              list.add(SecondData);
              Navigator.pop(context, list);
            },
        ),
      ),
      body: Column(
        children: [
          WillPopScope(
            child: Text(''),
            onWillPop: OnBackPressed,
          ),
          Text(
              '첫 번째 데이터 선택'
          ),
          Row(
            children: [
              Expanded(
                child: RaisedButton(
                  child: Text('a'),
                  onPressed: () {
                    setState(() {
                      FirstData = 'a';
                    });
                  },
                ),
              ),Expanded(
                child: RaisedButton(
                  child: Text('b'),
                  onPressed: () {
                    setState(() {
                      FirstData = 'b';
                    });
                  },
                ),
              ),Expanded(
                child: RaisedButton(
                  child: Text('c'),
                  onPressed: () {
                    setState(() {
                      FirstData = 'c';
                    });
                  },
                ),
              ),
            ],
          ),
          Divider(),
          Text(
              '두 번째 데이터 선택'
          ),
          Row(
            children: [
              Expanded(
                child: RaisedButton(
                  child: Text('1'),
                  onPressed: () {
                    setState(() {
                      SecondData = '1';
                    });
                  },
                ),
              ),Expanded(
                child: RaisedButton(
                  child: Text('2'),
                  onPressed: () {
                    setState(() {
                      SecondData = '2';
                    });
                  },
                ),
              ),Expanded(
                child: RaisedButton(
                  child: Text('3'),
                  onPressed: () {
                    setState(() {
                      SecondData = '3';
                    });
                  },
                ),
              ),
            ],
          ),
          Divider(),
          Text('첫 번째 데이터 : ' + FirstData),
          Text('두 번째 데이터 : ' + SecondData),
        ],
      ),
    );
  }
}