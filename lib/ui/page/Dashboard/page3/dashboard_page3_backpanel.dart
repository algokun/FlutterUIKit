import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';
import 'package:flutter_ui_kit/ui/widgets/author_item.dart';
import 'package:flutter_ui_kit/ui/widgets/book_row_item.dart';

class DashboardPage3Back extends StatelessWidget with ImagesData{
  @override
  Widget build(BuildContext context) {
    final headLine = Theme.of(context).textTheme.subhead;
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: Text("Handpicked",
              style:
                  headLine.copyWith(color: Colors.pink, fontFamily: 'Medium')),
        ),
        Container(
          alignment: Alignment.center,
          width: 30.0,
          height: 3.0,
          color: Colors.pink.shade100,
        ),
        BookRowItem(
          assetName: ml,
          bookAuthor: "Tom Mitchell",
          bookName: "Machine Learning",
        ),
        BookRowItem(
          assetName: flutter,
          bookAuthor: "John Doe",
          bookName: "Flutter Developer",
        ),
        BookRowItem(
          assetName: dataScience,
          bookAuthor: "Joe Kerry",
          bookName: "Data Science",
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Text("Top Authors",
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(fontFamily: 'Medium')),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AuthorItem(
              authorImage: author1,
              authorName: "Daniel S",
            ),
            AuthorItem(
              authorImage: author2,
              authorName: "Mani Sai M",
            ),
            AuthorItem(
              authorImage: author3,
              authorName: "Tom M",
            ),
          ],
        )
      ],
    );
  }
}