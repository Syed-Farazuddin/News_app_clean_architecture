import 'package:new_app/core/resources/data_state.dart';
import 'package:new_app/core/usecases/usecase.dart';
import 'package:new_app/feature/daily_news/data/models/article_model.dart';
import 'package:new_app/feature/daily_news/domain/entities/article.dart';
import 'package:new_app/feature/daily_news/domain/repository/article_repository.dart';

class GetarticlesUseCase implements Usecase<DataState<List<Article>>, void> {
  final ArticleRepository _articleRepository;
  GetarticlesUseCase(this._articleRepository);

  @override
  Future<DataState<List<Article>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
