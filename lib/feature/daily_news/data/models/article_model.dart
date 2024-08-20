import 'package:new_app/feature/daily_news/domain/entities/article.dart';

class ArticleModel extends Article {
  ArticleModel({
    required super.id,
    required super.author,
    required super.title,
    required super.description,
    required super.url,
    required super.urlToImage,
    required super.publishedAt,
    required super.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        author: json['author'],
        id: json['id'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt'],
        content: json['content'],
      );
}
