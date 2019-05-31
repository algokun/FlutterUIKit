import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';
import 'package:line_icons/line_icons.dart';

class TimelinePage2 extends StatelessWidget with ImagesData{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2.0,
        centerTitle: true,
        titleSpacing: 0,
        title: Text(
          "@Mr404Found",
          style: Theme.of(context)
              .textTheme
              .subtitle
              .copyWith(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            tooltip: "Menu",
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context , i){
          return postListItem(context);
        },
      ),
    );
  }

  Widget postListItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(user),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Jon Snow",
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Colors.blueGrey),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                "1h",
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
          Divider(
            color: Colors.grey.shade200,
          ),
          Text(
            "Kit Harrington's Reaction to GOT End",
            style: TextStyle(fontSize: 20, fontFamily: 'Medium'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: Theme.of(context)
                .textTheme
                .subtitle
                .copyWith(color: Colors.blueGrey),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                LineIcons.heart,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "450",
                style: Theme.of(context).textTheme.caption,
              ),
              SizedBox(
                width: 15.0,
              ),
              Icon(
                Icons.message,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "17 Comments",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )
        ],
      ),
    );
  }
}
