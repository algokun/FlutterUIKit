import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';
import 'package:flutter_ui_kit/ui/widgets/course_tile.dart';
import 'package:flutter_ui_kit/ui/widgets/tiles4u.dart';
import 'package:line_icons/line_icons.dart';

class DashboardPage1 extends StatelessWidget with ImagesData{
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.pink),
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/user.png"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: new CircularProgressIndicator(
                        value: .45,
                        backgroundColor: Colors.grey.shade300,
                        strokeWidth: 10.0),
                    height: 100.0,
                    width: 100.0,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'Level 1',
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                        text: '\n45% Completed',
                        style: Theme.of(context).textTheme.caption)
                  ])),
                ],
              ),
            ),
            Text(
              "Courses",
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(fontFamily: 'Medium'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CourseTile(
                    tileColor: Colors.redAccent,
                    courseName: "Java",
                    assetName: javalogo,
                  ),
                  CourseTile(
                    tileColor: Colors.teal,
                    courseName: "Android",
                    assetName: androidLogo,
                  ),
                  CourseTile(
                    tileColor: Colors.orange,
                    courseName: "HTML",
                    assetName: html5logo,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "More",
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(fontFamily: 'Medium'),
              ),
            ),
            Container(
              width: double.infinity,
              height: height / 8,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CustomTile(
                    data: LineIcons.book,
                    text: "Excercise",
                  ),
                  CustomTile(
                    data: LineIcons.paint_brush,
                    text: "Practise",
                  ),
                  CustomTile(
                    data: LineIcons.headphones,
                    text: "Support",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
