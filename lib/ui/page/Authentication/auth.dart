import 'package:flutter/material.dart';
import 'otp_login.dart';
import 'minimal_dark.dart';
import 'minimal_light.dart';
import 'dark_login_one.dart';
import 'login_page_one.dart';
import 'login_page_two.dart';
import 'dark_login_two.dart';

class AuthHome extends StatefulWidget {
  @override
  _AuthHomeState createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      child: Material(
        child: CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: new FlexibleSpaceBar(
                title: new Text("Authentication"),
              ),
              elevation: 0.0,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              ListTile(
                title: Text(
                  "Login 1",
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPageOne()));
                },
              ),
              ListTile(
                title: Text(
                  "Login 2",
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPageTwo()));
                },
              ),
              ListTile(
                title: Text(
                  "Dark Login 1",
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DarkLoginPageOne()));
                },
              ),
              ListTile(
                title: Text(
                  "Dark Login 2",
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DarkLoginPageTwo()));
                },
              ),
              ListTile(
                title: Text(
                  "Minimal Login Light",
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MinimalLoginLight()));
                },
              ),
              ListTile(
                title: Text(
                  "Minimal Login Dark",
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MinimalLoginDark()));
                },
              ),
              ListTile(
                title: Text(
                  "OTP Login",
                  style: Theme.of(context).textTheme.subhead,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OTPLogin()));
                },
              ),
            ]))
          ],
        ),
      ),
      tag: 'Auth',
    );
  }
}
