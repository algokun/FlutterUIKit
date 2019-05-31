import 'package:flutter/material.dart';
import 'page3/page3.dart';
import 'page4.dart';
import 'page1.dart';
import 'page2.dart';
import 'page5/page5.dart';

class DashboardHome extends StatefulWidget {
  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      child: Material(
        child: CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: new FlexibleSpaceBar(
                title: new Text("Dashboard"),
              ),
              elevation: 0.0,
              backgroundColor: Colors.teal,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  title: Text(
                    "Page 1",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DashboardPage1()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Page 2",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DashboardPage2()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Page 3",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DashboardPage3()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Page 4",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DashboardPage4()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Page 5",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DashboardPage5()));
                  },
                ),
              ]),
            )
          ],
        ),
      ),
      tag: 'Dashboard',
    );
  }
}
