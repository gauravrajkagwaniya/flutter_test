import 'package:flutter_app/model/article.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class DbHelper {
  DbHelper._();

  static final DbHelper _instance = new DbHelper._();

  factory DbHelper.getInstance() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "test.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    theDb.execute("PRAGMA foreign_keys=ON");
    _db = theDb;
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    print("created database");
    try {
//      Here type 0 is HOT article and type 1 is new article
      await db.execute(
          'CREATE TABLE Article(title TEXT, thumbnail TEXT, score NUMBER, authorFullname TEXT, id TEXT PRIMARY KEY,type NUMBER)');
    } catch (e) {}
  }

  Future<int> insertArticle(Article article, ArticleType type) async {
    try {
      Map<String, dynamic> data =
          Map<String, dynamic>.from(Article.toJson(article));

      data['type'] = type == ArticleType.new_articles ? 1 : 0;

      var dbClient = await db;
      int id = await dbClient.insert("Article", data);
      return id;
    } catch (e) {}
  }

  Future<List<Article>> getArticles(ArticleType type, [offset = 0]) async {
    try {
      var dbClient = await db;
      List<Map> mapList = await dbClient.query("Article",
          where: "type = ?",
          whereArgs: [type == ArticleType.new_articles ? 1 : 0],
          limit: 50,
          offset: offset);

      var list = mapList.map((data) => Article.fromJson(data)).toList();
      return list;
    } catch (e) {}
    return List();
  }
}
