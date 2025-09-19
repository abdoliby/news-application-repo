import 'package:dio/dio.dart';
import 'package:news_application/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});
  Future<List<ArticleModel>> getNews({required String q}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?q=$q&apiKey=2d74852b32e94c1fae86bedf72bdb80b&language=en');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        articleList.add(ArticleModel(
          url: article['url'],
          image: article['urlToImage'],
          subTitle: article['description'],
          title: article['title'],
        ));
      }
      return articleList;
    } on Exception catch (e) {
      print(e);
      return [];
    }
  }
}
