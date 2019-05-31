import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';

class TimelinePage1 extends StatelessWidget with ImagesData {
  final whiteColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            cityBG,
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Theme(
            data: ThemeData(
                fontFamily: 'Regular',
                textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: whiteColor, displayColor: Colors.white54)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: whiteColor,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: whiteColor,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Sunday\n",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(color: whiteColor)),
                          TextSpan(
                              text: "May 26 , 2019",
                              style: TextStyle(
                                color: whiteColor,
                                fontFamily: 'Bold',
                                fontSize: 12,
                              )),
                        ])),
                        Text("30°C",
                            style: Theme.of(context)
                                .textTheme
                                .headline
                                .copyWith(color: whiteColor)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                  ),
                  timelineItem(
                      context, "5", true, "Jogging", "first need to wake!"),
                  showDivider(context),
                  timelineItem(context, "8", true, "have some breakfast!!",
                      "delicious Noodles"),
                  showDivider(context),
                  timelineItem(context, "10", false, "Dinner", "with Family"),
                  showDivider(context),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.done),
                ),
                CircleAvatar(
                  child: Icon(Icons.add),
                ),
                CircleAvatar(
                  child: Icon(Icons.close),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget timelineItem(BuildContext context, String time, bool isAM,
      String title, String subtitle) {
    return ListTile(
      leading: Text.rich(TextSpan(children: [
        TextSpan(
            text: "$time\n",
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
        TextSpan(
            text: isAM ? "AM" : "PM",
            style: TextStyle(
              color: whiteColor,
              fontFamily: 'Bold',
              fontSize: 12,
            )),
      ])),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  Widget showDivider(BuildContext context) {
    return Divider(color: whiteColor);
  }
}
