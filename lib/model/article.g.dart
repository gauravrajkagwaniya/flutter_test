// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article()
    ..title = json['title'] as String
    ..score = json['score'] as int
    ..authorFullname = json['authorFullname'] as String ?? 'author_fullname'
    ..id = json['id'] as String
    ..thumbnail = json['thumbnail'] as String;
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'score': instance.score,
      'authorFullname': instance.authorFullname,
      'id': instance.id,
      'thumbnail': instance.thumbnail,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Article on _Article, Store {
  final _$titleAtom = Atom(name: '_Article.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$scoreAtom = Atom(name: '_Article.score');

  @override
  int get score {
    _$scoreAtom.context.enforceReadPolicy(_$scoreAtom);
    _$scoreAtom.reportObserved();
    return super.score;
  }

  @override
  set score(int value) {
    _$scoreAtom.context.conditionallyRunInAction(() {
      super.score = value;
      _$scoreAtom.reportChanged();
    }, _$scoreAtom, name: '${_$scoreAtom.name}_set');
  }

  final _$authorFullnameAtom = Atom(name: '_Article.authorFullname');

  @override
  String get authorFullname {
    _$authorFullnameAtom.context.enforceReadPolicy(_$authorFullnameAtom);
    _$authorFullnameAtom.reportObserved();
    return super.authorFullname;
  }

  @override
  set authorFullname(String value) {
    _$authorFullnameAtom.context.conditionallyRunInAction(() {
      super.authorFullname = value;
      _$authorFullnameAtom.reportChanged();
    }, _$authorFullnameAtom, name: '${_$authorFullnameAtom.name}_set');
  }

  final _$idAtom = Atom(name: '_Article.id');

  @override
  String get id {
    _$idAtom.context.enforceReadPolicy(_$idAtom);
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.context.conditionallyRunInAction(() {
      super.id = value;
      _$idAtom.reportChanged();
    }, _$idAtom, name: '${_$idAtom.name}_set');
  }

  final _$thumbnailAtom = Atom(name: '_Article.thumbnail');

  @override
  String get thumbnail {
    _$thumbnailAtom.context.enforceReadPolicy(_$thumbnailAtom);
    _$thumbnailAtom.reportObserved();
    return super.thumbnail;
  }

  @override
  set thumbnail(String value) {
    _$thumbnailAtom.context.conditionallyRunInAction(() {
      super.thumbnail = value;
      _$thumbnailAtom.reportChanged();
    }, _$thumbnailAtom, name: '${_$thumbnailAtom.name}_set');
  }
}
