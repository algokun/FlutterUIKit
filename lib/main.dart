import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main(){
  runApp(App());
  timeDilation  = 1.5;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Regular'
      ),
      home: Homepage(),
    );
  }
}
