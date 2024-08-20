import 'package:new_app/core/resources/data_state.dart';
import 'package:new_app/feature/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<Article>>> getNewsArticles();
}
