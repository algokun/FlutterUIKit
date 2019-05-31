import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/logic/bloc/login_bloc.dart';
import 'dart:async';

import 'package:flutter_ui_kit/ui/widgets/login_okay.dart';

class LoginPageOne extends StatefulWidget {
  @override
  _LoginPageOneState createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  final pinkColor = Color(0xFFD81B60);

  final loginBloc = LoginBloc();

  bool isProgressVisible = false;

  final _email = TextEditingController();
  final _password = TextEditingController();
  final _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context);

    final baseTextTheme = baseTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        key: _key,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Login",
          style: baseTextTheme.title.copyWith(
            color: pinkColor,
            fontFamily: 'Medium',
          ),
        ),
        bottom: PreferredSize(
          child: Visibility(
            visible: isProgressVisible,
            child: LinearProgressIndicator(),
          ),
          preferredSize: Size(double.infinity, 2.0),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Text.rich(TextSpan(children: [
            TextSpan(
              text: "Welcome,\n",
              style:
                  baseTextTheme.subtitle.copyWith(fontWeight: FontWeight.w900),
            ),
            TextSpan(
              text: "we are happy that you’re back !",
              style:
                  baseTextTheme.caption.copyWith(fontWeight: FontWeight.w100),
            ),
          ])),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Theme(
              data: baseTheme.copyWith(primaryColor: pinkColor),
              child: StreamBuilder<String>(
                  stream: loginBloc.email,
                  builder: (context, snapshot) => TextField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: loginBloc.emailChanged,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email",
                            errorText: snapshot.error),
                      )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Theme(
              data: baseTheme.copyWith(primaryColor: pinkColor),
              child: StreamBuilder<String>(
                  stream: loginBloc.password,
                  builder: (context, snapshot) {
                    return TextField(
                      controller: _password,
                      obscureText: true,
                      onChanged: loginBloc.passwordChanged,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key),
                          hintText: "Password",
                          errorText: snapshot.error),
                    );
                  }),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: StreamBuilder<bool>(
                stream: loginBloc.submitCheck,
                builder: (context, snapshot) {
                  return Visibility(
                    visible: snapshot.hasData ? snapshot.data : false,
                    child: RaisedButton(
                      padding: EdgeInsets.all(10.0),
                      color: pinkColor,
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {
                        showProgress();
                        Timer(Duration(seconds: 2), login);
                      },
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Colors.pink, style: BorderStyle.solid, width: 2))),
        width: double.infinity,
        child: FlatButton(
          splashColor: Colors.pink,
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Dont have an Account? \t Join Us",
            style: baseTextTheme.subtitle
                .copyWith(color: pinkColor, fontFamily: 'Medium'),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  hideProgress() {
    setState(() {
      this.isProgressVisible = false;
    });
  }

  showProgress() {
    setState(() {
      this.isProgressVisible = true;
    });
  }

  login() {
    hideProgress();
    LoginSuccessful().show(_key.currentContext);
  }
}
