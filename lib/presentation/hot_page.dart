import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/article_store.dart';
import 'custom/store_observer.dart';
import 'list_view.dart';

class HotPage extends StatelessWidget {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return StoreObserver<ArticleStore>(
      builder: (ArticleStore store, BuildContext context) {
        if (store.hotArticles == null) {
          store.fetchHotArticles();
          if (store.isHotArticleLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }

        return Container(
          child: ListViewWidget(store.hotArticles, onLoadMore,
              searchString: store.searchString),
        );
      },
    );
  }

  onLoadMore() {
    Provider.of<ArticleStore>(context).fetchHotArticles();
  }
}
