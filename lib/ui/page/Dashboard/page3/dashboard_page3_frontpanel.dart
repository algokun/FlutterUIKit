import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';
import 'package:line_icons/line_icons.dart';

class DashboardPage3Front extends StatefulWidget {
  @override
  _DashboardPage3FrontState createState() => _DashboardPage3FrontState();
}

class _DashboardPage3FrontState extends State<DashboardPage3Front> with ImagesData{
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          bg,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Browse",
                style: Theme.of(context).textTheme.display1.copyWith(
                    fontFamily: 'Medium',
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              Text(
                "Find the best that suits you",
                style: Theme.of(context).textTheme.subtitle.copyWith(
                    fontFamily: 'Medium',
                    fontWeight: FontWeight.w300,
                    color: Colors.white70),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.pink.shade100.withOpacity(.5),
                    borderRadius: BorderRadius.circular(30.0)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Keyword",
                      hintStyle: TextStyle(color: Colors.white54)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(LineIcons.book),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(LineIcons.bookmark),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(LineIcons.headphones),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(LineIcons.history),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.0,
              )
            ],
          ),
        )
      ],
    );
  }
}