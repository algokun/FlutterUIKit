import 'package:flutter/material.dart';

class MinimalLoginDark extends StatelessWidget {
  final rich = TextSpan(children: [
    TextSpan(
      text: 'Login \n',
      style: TextStyle(color: Colors.white),
    ),
    TextSpan(
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      style: TextStyle(color: Colors.white54),
    )
  ]);

  final whiteText = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData.dark().primaryColor,
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10.02),
            child: CircleAvatar(
              child: Icon(
                Icons.lock_outline,
                size: 40.0,
              ),
              radius: 40.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(rich),
          TextField(
            style: whiteText,
            decoration: InputDecoration(
                hintText: 'enter your username',
                labelText: 'Username',
                labelStyle: whiteText),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            style: whiteText,
            decoration: InputDecoration(
                hintText: 'enter your password',
                labelText: 'Password',
                labelStyle: whiteText),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Colors.pink,
            onPressed: () {},
            textColor: Colors.white,
            child: Text("Login"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
          ),
        ],
      ),
    );
  }
}
