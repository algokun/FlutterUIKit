import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/page/NoItem/page1.dart';
import 'package:flutter_ui_kit/ui/page/NoItem/page2.dart';

class NoitemHome extends StatefulWidget {
  @override
  _NoitemHomeState createState() => _NoitemHomeState();
}

class _NoitemHomeState extends State<NoitemHome> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      child: Material(
        child: CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
              backgroundColor: Colors.purple,
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: new FlexibleSpaceBar(
                title: new Text("No Item"),
              ),
              elevation: 0.0,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  title: Text(
                    "No Results Found",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NoResultsFound()));
                  },
                ),
                ListTile(
                  title: Text(
                    "No Internet Connection",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NoInternetConnection()));
                  },
                ),
              ]),
            )
          ],
        ),
      ),
      tag: 'NoItem',
    );
  }
}
