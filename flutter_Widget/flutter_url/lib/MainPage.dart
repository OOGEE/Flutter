import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("url")
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Launching the web"),
          onPressed: () => _launchURL(),
        ),
      ),
    );
  }

  _launchURL() async {
    String url = "https://github.com/OOGEE/Flutter";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}