import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/article_store.dart';
import 'custom/store_observer.dart';
import 'list_view.dart';

class NewPage extends StatelessWidget {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return StoreObserver<ArticleStore>(
      builder: (ArticleStore store, BuildContext context) {
        if (store.newArticles == null) {
          store.fetchNewArticles();

          if (store.isNewArticleLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
        return Container(
          child: ListViewWidget(store.newArticles, onLoadMore,
              searchString: store.searchString),
        );
      },
    );
  }

  onLoadMore() {
    Provider.of<ArticleStore>(context).fetchNewArticles();
  }
}
