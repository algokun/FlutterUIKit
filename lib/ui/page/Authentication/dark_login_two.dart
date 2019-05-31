import 'package:flutter/material.dart';

class DarkLoginPageTwo extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.white,
      style: BorderStyle.solid,
      width: 1.5,
    ),
  );
  final blackBoxDecoration = BoxDecoration(
    color: Colors.white12,
    border: Border.all(
      color: Colors.white24,
      style: BorderStyle.solid,
      width: 1.5,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData.dark().primaryColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: FlutterLogo(
                colors: Colors.pink,
                size: 60.0,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login to continue",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: boxDecoration,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Username'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: boxDecoration,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Password'),
              ),
            ),
            FlatButton(
              color: Colors.white24,
              shape: RoundedRectangleBorder(),
              onPressed: () {},
              textColor: Colors.white,
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
