import 'package:new_app/core/resources/data_state.dart';
import 'package:new_app/feature/daily_news/data/models/article_model.dart';
import 'package:new_app/feature/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    throw UnimplementedError();
  }
}
