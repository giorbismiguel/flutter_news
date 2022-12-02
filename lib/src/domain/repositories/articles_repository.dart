import 'package:news/src/core/params/article_request.dart';
import 'package:news/src/core/resources/data_state.dart';
import 'package:news/src/domain/entities/article.dart';

abstract class ArticlesRepository {
  Future<DataState<List<Article>>> getBreakingNewsArticles(
    ArticlesRequestParams params
  );
}
