import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:new_app/feature/daily_news/domain/entities/article.dart';

abstract class RemoteArticleState extends Equatable {
  final List<Article>? articles;
  final DioException? error;
  const RemoteArticleState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticleLoading extends RemoteArticleState {
  const RemoteArticleLoading();
}

class RemoteArticleSuccess extends RemoteArticleState {
  const RemoteArticleSuccess(List<Article> article) : super(articles: article);
}

class RemoteArticleError extends RemoteArticleState {
  const RemoteArticleError(DioException error) : super(error: error);
}
