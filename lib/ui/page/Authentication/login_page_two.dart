import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/logic/bloc/login_bloc.dart';
import 'package:flutter_ui_kit/ui/widgets/login_okay.dart';

class LoginPageTwo extends StatefulWidget {
  @override
  _LoginPageTwoState createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  final bloc = LoginBloc();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            height: height / 3,
            width: double.infinity,
            color: Colors.pink,
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: "Welcome \n",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.white)),
              TextSpan(
                  text: "The world is waiting for you..",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle
                      .copyWith(color: Colors.white70)),
            ])),
          ),
          Positioned(
            bottom: 0,
            child: Material(
              elevation: 3.0,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              child: Container(
                width: width,
                height: height - (height / 3 - 50),
                child: ListView(
                  padding: EdgeInsets.all(20.0),
                  children: <Widget>[
                    StreamBuilder<String>(
                        stream: bloc.email,
                        builder: (context, snapshot) {
                          return TextField(
                            onChanged: bloc.emailChanged,
                            decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.alternate_email),
                              errorText: snapshot.error,
                            ),
                          );
                        }),
                    SizedBox(
                      height: 10.0,
                    ),
                    StreamBuilder<String>(
                        stream: bloc.password,
                        builder: (context, snapshot) {
                          return TextField(
                            obscureText: true,
                            onChanged: bloc.passwordChanged,
                            decoration: InputDecoration(
                                labelText: "Password",
                                prefixIcon: Icon(Icons.lock_outline),
                                errorText: snapshot.error),
                          );
                        }),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Forgot Password?"),
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    StreamBuilder<bool>(
                        stream: bloc.submitCheck,
                        builder: (context, snapshot) {
                          return Container(
                            margin: EdgeInsets.only(top: 30.0),
                            child: Visibility(
                              visible: snapshot.hasData ? snapshot.data : false,
                              child: RaisedButton(
                                elevation: 1.0,
                                onPressed: () {
                                  LoginSuccessful().show(context);
                                },
                                child: Text("Login"),
                                textColor: Colors.white,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          );
                        }),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      child: Text("Dont Have an Account ? Signup"),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}