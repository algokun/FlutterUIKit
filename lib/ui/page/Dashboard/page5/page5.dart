import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';
import 'page5data.dart';

class DashboardPage5 extends StatefulWidget with ImagesData{
  @override
  _DashboardPage5State createState() => _DashboardPage5State();
}

class _DashboardPage5State extends State<DashboardPage5> with Page5Data{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.account_balance_wallet,
          color: Colors.purple,
        ),
        titleSpacing: 0.0,
        title: Text("My Wallet",
            style: Theme.of(context).textTheme.subhead.copyWith(
                  color: Colors.purple,
                )),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/user.png"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              type: MaterialType.transparency,
              child: Image.asset(
                widget.card,
                fit: BoxFit.cover,
              )
            ),
            ListTile(
              title: Text(
                "This Month",
                style: Theme.of(context).textTheme.subhead,
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, i) {
                  return Divider();
                },
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: Icon(
                        iconList[index],
                        color: itemColors[index],
                      ),
                      contentPadding: EdgeInsets.all(0.0),
                      title: Text(
                        titelItems[index],
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                      subtitle: Text(
                        timeData[index],
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Text(priceCuts[index]));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}