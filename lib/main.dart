import 'package:api_demo/post_result_model.dart';
import 'package:api_demo/user_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //PostResult postResult = null;
  String output = "no data";

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
              Text(output),
              RaisedButton(
                onPressed: () {
                  User.getUsers('2').then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++)
                      output = output + "[ " + users[i].name + " ]";
                    setState(() {});
                  });
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
