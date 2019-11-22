import 'package:api_demo/post_result_model.dart';
import 'package:api_demo/user_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "tidak ada data"),
              RaisedButton(
                onPressed: () {
                  /*
                  User.connectToAPI('10').then((value) {
                    user = value;
                    setState(() {});
                  });
                  */
                },
                child: Text("GET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
