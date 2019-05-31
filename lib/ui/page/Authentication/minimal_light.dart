import 'package:flutter/material.dart';

class MinimalLoginLight extends StatelessWidget {
  final rich = TextSpan(children: [
    TextSpan(
      text: 'Login \n',
    ),
    TextSpan(
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      style: TextStyle(color: Colors.black54),
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10),
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
            decoration: InputDecoration(
              hintText: 'enter your username',
              labelText: 'Username',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'enter your password',
              labelText: 'Password',
            ),
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
