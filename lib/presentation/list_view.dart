import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/article.dart';

class ListViewWidget extends StatelessWidget {
  List<Article> articles;
  ArticleType type;
  Function onLoadMore;
  String searchString;

  ListViewWidget(this.articles, this.onLoadMore, {this.searchString});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles != null ? articles.length : 0,
        itemBuilder: (BuildContext context, int index) {
          if (index == articles.length - 5 &&
              (searchString == null || searchString?.isEmpty)) {
            onLoadMore();
          }

          if (searchString != null &&
              !articles[index]
                  .title
                  .toLowerCase()
                  .contains(searchString.toLowerCase())) {
            return SizedBox();
          }

          return Card(
            elevation: 15,
            margin: EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              height: 150,
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(articles[index].thumbnail),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Text(
                      articles[index].title,
                      maxLines: 5,
                      overflow: TextOverflow.fade,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
