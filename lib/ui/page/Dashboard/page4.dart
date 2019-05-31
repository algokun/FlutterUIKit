import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';
import 'package:flutter_ui_kit/ui/widgets/hotel_item.dart';
import 'package:line_icons/line_icons.dart';

class DashboardPage4 extends StatelessWidget with ImagesData{
  final whiteColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            height: height / 3,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.green.shade300,
                Colors.green.shade400,
              ],
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    LineIcons.search,
                    color: whiteColor,
                  ),
                ),
                Container(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\tWesteroes",
                      style: Theme.of(context)
                          .textTheme
                          .headline
                          .copyWith(color: whiteColor, fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "\n\t 21-25 May , 2 Guests",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle
                          .copyWith(color: whiteColor, fontFamily: 'Medium'),
                    ),
                  ])),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Material(
              elevation: 4.0,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              child: Container(
                width: width,
                height: height - (height / 3),
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text("\t20 Rooms for you",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle
                              .copyWith(fontFamily: 'Medium')),
                    ),
                    HotelItem(
                      distance: 1.8,
                      hotelAsset: hotel1,
                      hotelName: "Tx Society",
                      price: 300,
                    ),
                    HotelItem(
                      distance: 8.8,
                      hotelAsset: hotel2,
                      hotelName: "Dot Resort",
                      price: 450,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
