import 'package:mobx/mobx.dart';

import '../model/article.dart';
import '../global.dart';

part 'article_store.g.dart';

class ArticleStore = _ArticleStore with _$ArticleStore;

abstract class _ArticleStore with Store {
  @observable
  bool isHotArticleLoading = false;

  @observable
  bool isNewArticleLoading = false;

  @observable
  String afterHotArticle;

  @observable
  String afterNewArticle;

  @observable
  String searchString;

  @observable
  int activeTab = 0;

  @observable
  ObservableList<Article> hotArticles;

  @observable
  ObservableList<Article> newArticles;

  @action
  void fetchHotArticles() {
    if (isHotArticleLoading) {
      return;
    }
    isHotArticleLoading = true;
    articleService
        .getArticles(ArticleType.hot_articles, after: afterHotArticle)
        .then((data) {
      if (data == null) {
        fetchLocalArticles(ArticleType.hot_articles);
      } else {
        updateData(ArticleType.hot_articles, data['articles'], data['after']);
      }
    });
  }

  @action
  fetchLocalArticles(ArticleType type) async {
    List<Article> articles = await database_helper.getArticles(type);
    if (type == ArticleType.hot_articles) {
      hotArticles = ObservableList.of(articles);
    } else {
      newArticles = ObservableList.of(articles);
    }
  }

  @action
  onTabChange(int current) {
    activeTab = current;
  }

  @action
  onSearchTextChange(String text) {
    searchString = text;
  }

  @action
  updateData(ArticleType type, List<Article> articles, after) {
    if (type == ArticleType.hot_articles) {
      if (hotArticles == null) {
        hotArticles = ObservableList<Article>();
      }
      hotArticles.addAll(articles);
      hotArticles = hotArticles;
      afterHotArticle = after;
      isHotArticleLoading = false;
    } else {
      if (newArticles == null) {
        newArticles = ObservableList<Article>();
      }
      newArticles.addAll(articles);
      newArticles = newArticles;
      afterNewArticle = after;
      isNewArticleLoading = false;
    }
    articles.forEach((article) {
      database_helper.insertArticle(article, type);
    });
  }

  @action
  void fetchNewArticles() {
    if (isNewArticleLoading) {
      return;
    }
    isNewArticleLoading = true;
    articleService
        .getArticles(ArticleType.new_articles, after: afterNewArticle)
        .then((data) {
      if (data == null) {
        fetchLocalArticles(ArticleType.new_articles);
      } else {
        updateData(ArticleType.new_articles, data['articles'], data['after']);
      }
    });
  }
}
