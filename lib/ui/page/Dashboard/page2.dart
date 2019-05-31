import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';
import 'package:flutter_ui_kit/ui/widgets/label_icon.dart';
import 'package:flutter_multi_carousel/carousel.dart';

class DashboardPage2 extends StatelessWidget with ImagesData{
  final whiteColor = Colors.white;
  final assetName = "images/banner.jpg";
  @override
  Widget build(BuildContext context) {
    precacheImage(NetworkImage(banner), context);
    return Scaffold(
      backgroundColor: Color(0xFF2A295C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Good Afternoon,\nJohnDoe",
          style:
              Theme.of(context).textTheme.subtitle.copyWith(color: whiteColor),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Carousel(
              height: 150,
              width: double.infinity,
              type: "simple",
              indicatorType: "bubble",
              arrowColor: Colors.white,
              axis: Axis.horizontal,
              showArrow: true,
              children: List.generate(
                  5,
                  (i) => Image.network(
                    banner,
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5.0,
              color: Color(0xFF302E61),
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    iconRow(),
                    iconRow(),
                    iconRow(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget iconRow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LabelIconItem(
            icon: Icons.credit_card,
            label: "Payments",
          ),
          LabelIconItem(
            icon: Icons.shopping_cart,
            label: "Cart",
          ),
          LabelIconItem(
            icon: Icons.store,
            label: "Stores",
          ),
          LabelIconItem(
            icon: Icons.account_balance_wallet,
            label: "Wallet",
          ),
        ],
      ),
    );
  }
}
