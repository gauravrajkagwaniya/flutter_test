import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';

part 'article.g.dart';

@JsonSerializable()
class Article extends _Article with _$Article {
  static Article fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  static Map<String, dynamic> toJson(Article article) =>
      _$ArticleToJson(article);
}

abstract class _Article with Store {
  @observable
  String title;

  @observable
  int score;

  @observable
  @JsonKey(defaultValue: 'author_fullname')
  String authorFullname;

  @observable
  String id;

  @observable
  String thumbnail;
}

enum ArticleType { new_articles, hot_articles }
