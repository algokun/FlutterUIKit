import 'package:flutter/material.dart';

class DarkLoginPageOne extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();

  final decoration = BoxDecoration(
      color: Colors.black26,
      border: Border.all(color: Colors.pink, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(10.0));

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _key,
      backgroundColor: ThemeData.dark().primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Login",
          style: Theme.of(context)
              .textTheme
              .subhead
              .copyWith(fontFamily: 'Bold', color: Colors.pink),
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 2),
          child: Material(
            color: Colors.white,
            child: Container(
              height: 2,
              width: 100,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
      body: Builder(builder: (context) {
        return ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              alignment: Alignment.center,
              child: Text(
                "Welcome back!!",
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 53.0,
                backgroundColor: Colors.pink,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/user.png"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                "Jon Snow",
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Colors.white),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: width - 100,
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: decoration,
                  child: TextField(
                    focusNode: FocusNode(
                    
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.pink.shade100),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.pink.shade100),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.pink,
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              child: Text(
                "OR",
                style: TextStyle(color: Colors.white),
              ),
            ),
            OutlineButton(
              padding: EdgeInsets.all(10.0),
              borderSide: BorderSide(color: Colors.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {},
              textColor: Colors.white,
              child: Text("Login with different account"),
            )
          ],
        );
      }),
    );
  }
}
