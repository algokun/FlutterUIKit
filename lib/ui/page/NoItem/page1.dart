import 'package:flutter/material.dart';

class NoResultsFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network("https://assets-ouch.icons8.com/free-download/613/6313ebf7-2100-42e1-8699-1aec856c5197.png?filename=ginger-cat-list-is-empty.png"),
          Text("No Results Found")
        ],
      ),
    );
  }
}