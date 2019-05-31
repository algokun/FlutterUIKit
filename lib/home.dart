import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/page/NoItem/noitem.dart';
import 'package:flutter_ui_kit/ui/widgets/uikit_tile.dart';
import 'package:flutter_ui_kit/ui/page/Authentication/auth.dart';
import 'package:flutter_ui_kit/ui/page/Dashboard/dash_home.dart';
import 'package:flutter_ui_kit/ui/page/Timeline/timeline.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home), title: new Text('Home')),
      BottomNavigationBarItem(
          icon: Icon(Icons.info_outline), title: Text('About'))
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter UI Kit",
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(fontFamily: 'Medium', color: Colors.pink),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(
              colors: Colors.pink,
              size: 35.0,
            ),
          )
        ],
      ),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        items: buildBottomNavBarItems(),
        onTap: (index) {
          bottomTapped(index);
        },
      ),
    );
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        BuildHome(),
        BuildHome(),
      ],
    );
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }
}

class BuildHome extends StatelessWidget {
  const BuildHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      children: <Widget>[
        Hero(
          tag: 'Auth',
          child: Tile(
            cardColor: Colors.pinkAccent,
            iconColor: Colors.white,
            text: "Authentication",
            iconData: Icons.lock,
            textColor: Colors.white,
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AuthHome()));
            },
          ),
        ),
        Hero(
          tag: 'Dashboard',
          child: Tile(
              cardColor: Colors.teal,
              iconColor: Colors.white,
              text: "Dashboard",
              iconData: Icons.dashboard,
              textColor: Colors.white,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DashboardHome()));
              }),
        ),
        Hero(
          tag: 'Timeline',
          child: Tile(
              cardColor: Colors.blueAccent,
              iconColor: Colors.white,
              text: "Timeline",
              iconData: Icons.timeline,
              textColor: Colors.white,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TimelineHome()));
              }),
        ),
        Hero(
          tag: 'NoItem',
          child: Tile(
              cardColor: Colors.purple,
              iconColor: Colors.white,
              text: "No Item",
              iconData: Icons.not_interested,
              textColor: Colors.white,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NoitemHome()));
              }),
        ),
        Tile(
            cardColor: Colors.amber,
            iconColor: Colors.white,
            text: "More to come",
            iconData: Icons.more_horiz,
            textColor: Colors.white,
            onTap: () {}),
      ],
    );
  }
}
