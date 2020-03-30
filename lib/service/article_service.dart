import '../model/article.dart';
import 'api_service.dart';

class ArticleService extends APIService {
  ArticleService._();

  factory ArticleService.getInstance() => _instance;
  static final ArticleService _instance = ArticleService._();

  Future<Map<String, dynamic>> getArticles(ArticleType type,
      {String after}) async {
    String path = type == ArticleType.new_articles ? '/new.json' : '/hot.json';
    final Map<String, dynamic> response =
        await get(path, params: {"after": after});

    if (response == null) {
      return response;
    }

    List<Article> articles = (response['data']['children'] as List<dynamic>)
        .map((dynamic o) => Article.fromJson(o['data']))
        .toList();

    var afterData = response['data']['after'];

    return {'articles': articles, 'after': afterData};
  }
}
