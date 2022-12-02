import '../../domain/entities/article.dart';
import 'source_model.dart';

class ArticleModel extends Article {
  const ArticleModel({
    required int id,
    required SourceModel source,
    String? author,
    required String title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) : super(
          id,
          source,
          author,
          title,
          description,
          url,
          urlToImage,
          publishedAt,
          content,
        );

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    if (map == null) return null;

    return ArticleModel(
      id: map['id'] as int,
      source: SourceModel.fromJson(map['source'] as Map<String, dynamic>),
      author: map['author'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      url: map['url'] as String,
      urlToImage: map['urlToImage'] as String,
      publishedAt: map['publishedAt'] as String,
      content: map['content'] as String
      
    );
  }
}
