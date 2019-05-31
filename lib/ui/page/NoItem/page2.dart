import 'package:flutter/material.dart';

class NoInternetConnection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.signal_cellular_connected_no_internet_4_bar,
            color: Colors.purple,
            size: 100,
          ),
          Text("No Internet Connection")
        ],
      ),
    );
  }
}
