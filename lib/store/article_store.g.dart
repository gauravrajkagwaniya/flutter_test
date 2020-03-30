// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$ArticleStore on _ArticleStore, Store {
  final _$isHotArticleLoadingAtom =
      Atom(name: '_ArticleStore.isHotArticleLoading');

  @override
  bool get isHotArticleLoading {
    _$isHotArticleLoadingAtom.context
        .enforceReadPolicy(_$isHotArticleLoadingAtom);
    _$isHotArticleLoadingAtom.reportObserved();
    return super.isHotArticleLoading;
  }

  @override
  set isHotArticleLoading(bool value) {
    _$isHotArticleLoadingAtom.context.conditionallyRunInAction(() {
      super.isHotArticleLoading = value;
      _$isHotArticleLoadingAtom.reportChanged();
    }, _$isHotArticleLoadingAtom,
        name: '${_$isHotArticleLoadingAtom.name}_set');
  }

  final _$isNewArticleLoadingAtom =
      Atom(name: '_ArticleStore.isNewArticleLoading');

  @override
  bool get isNewArticleLoading {
    _$isNewArticleLoadingAtom.context
        .enforceReadPolicy(_$isNewArticleLoadingAtom);
    _$isNewArticleLoadingAtom.reportObserved();
    return super.isNewArticleLoading;
  }

  @override
  set isNewArticleLoading(bool value) {
    _$isNewArticleLoadingAtom.context.conditionallyRunInAction(() {
      super.isNewArticleLoading = value;
      _$isNewArticleLoadingAtom.reportChanged();
    }, _$isNewArticleLoadingAtom,
        name: '${_$isNewArticleLoadingAtom.name}_set');
  }

  final _$afterHotArticleAtom = Atom(name: '_ArticleStore.afterHotArticle');

  @override
  String get afterHotArticle {
    _$afterHotArticleAtom.context.enforceReadPolicy(_$afterHotArticleAtom);
    _$afterHotArticleAtom.reportObserved();
    return super.afterHotArticle;
  }

  @override
  set afterHotArticle(String value) {
    _$afterHotArticleAtom.context.conditionallyRunInAction(() {
      super.afterHotArticle = value;
      _$afterHotArticleAtom.reportChanged();
    }, _$afterHotArticleAtom, name: '${_$afterHotArticleAtom.name}_set');
  }

  final _$afterNewArticleAtom = Atom(name: '_ArticleStore.afterNewArticle');

  @override
  String get afterNewArticle {
    _$afterNewArticleAtom.context.enforceReadPolicy(_$afterNewArticleAtom);
    _$afterNewArticleAtom.reportObserved();
    return super.afterNewArticle;
  }

  @override
  set afterNewArticle(String value) {
    _$afterNewArticleAtom.context.conditionallyRunInAction(() {
      super.afterNewArticle = value;
      _$afterNewArticleAtom.reportChanged();
    }, _$afterNewArticleAtom, name: '${_$afterNewArticleAtom.name}_set');
  }

  final _$searchStringAtom = Atom(name: '_ArticleStore.searchString');

  @override
  String get searchString {
    _$searchStringAtom.context.enforceReadPolicy(_$searchStringAtom);
    _$searchStringAtom.reportObserved();
    return super.searchString;
  }

  @override
  set searchString(String value) {
    _$searchStringAtom.context.conditionallyRunInAction(() {
      super.searchString = value;
      _$searchStringAtom.reportChanged();
    }, _$searchStringAtom, name: '${_$searchStringAtom.name}_set');
  }

  final _$activeTabAtom = Atom(name: '_ArticleStore.activeTab');

  @override
  int get activeTab {
    _$activeTabAtom.context.enforceReadPolicy(_$activeTabAtom);
    _$activeTabAtom.reportObserved();
    return super.activeTab;
  }

  @override
  set activeTab(int value) {
    _$activeTabAtom.context.conditionallyRunInAction(() {
      super.activeTab = value;
      _$activeTabAtom.reportChanged();
    }, _$activeTabAtom, name: '${_$activeTabAtom.name}_set');
  }

  final _$hotArticlesAtom = Atom(name: '_ArticleStore.hotArticles');

  @override
  ObservableList<Article> get hotArticles {
    _$hotArticlesAtom.context.enforceReadPolicy(_$hotArticlesAtom);
    _$hotArticlesAtom.reportObserved();
    return super.hotArticles;
  }

  @override
  set hotArticles(ObservableList<Article> value) {
    _$hotArticlesAtom.context.conditionallyRunInAction(() {
      super.hotArticles = value;
      _$hotArticlesAtom.reportChanged();
    }, _$hotArticlesAtom, name: '${_$hotArticlesAtom.name}_set');
  }

  final _$newArticlesAtom = Atom(name: '_ArticleStore.newArticles');

  @override
  ObservableList<Article> get newArticles {
    _$newArticlesAtom.context.enforceReadPolicy(_$newArticlesAtom);
    _$newArticlesAtom.reportObserved();
    return super.newArticles;
  }

  @override
  set newArticles(ObservableList<Article> value) {
    _$newArticlesAtom.context.conditionallyRunInAction(() {
      super.newArticles = value;
      _$newArticlesAtom.reportChanged();
    }, _$newArticlesAtom, name: '${_$newArticlesAtom.name}_set');
  }

  final _$fetchLocalArticlesAsyncAction = AsyncAction('fetchLocalArticles');

  @override
  Future fetchLocalArticles(ArticleType type) {
    return _$fetchLocalArticlesAsyncAction
        .run(() => super.fetchLocalArticles(type));
  }

  final _$_ArticleStoreActionController =
      ActionController(name: '_ArticleStore');

  @override
  void fetchHotArticles() {
    final _$actionInfo = _$_ArticleStoreActionController.startAction();
    try {
      return super.fetchHotArticles();
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onTabChange(int current) {
    final _$actionInfo = _$_ArticleStoreActionController.startAction();
    try {
      return super.onTabChange(current);
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onSearchTextChange(String text) {
    final _$actionInfo = _$_ArticleStoreActionController.startAction();
    try {
      return super.onSearchTextChange(text);
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateData(ArticleType type, List<Article> articles, dynamic after) {
    final _$actionInfo = _$_ArticleStoreActionController.startAction();
    try {
      return super.updateData(type, articles, after);
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchNewArticles() {
    final _$actionInfo = _$_ArticleStoreActionController.startAction();
    try {
      return super.fetchNewArticles();
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }
}
