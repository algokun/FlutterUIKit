import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'dashboard_page3_backpanel.dart';
import 'dashboard_page3_frontpanel.dart';

class DashboardPage3 extends StatelessWidget {
  final BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Material(
      child: SlidingUpPanel(
          panel: DashboardPage3Back(),
          body: DashboardPage3Front(),
          borderRadius: radius,
          minHeight: height / 3,
          maxHeight: height - (height / 10)),
    );
  }
}
