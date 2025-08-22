import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<NewsModel>> getNewsByCategory(String category) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=YOUR_API_KEY',
      );
      Map<String, dynamic> json = response.data;
      List<dynamic> articles = json['articles'];

      List<NewsModel> articlList = [];
      for (var artical in articles) {
        NewsModel articalModel = NewsModel(
          imageURL:
              artical["urlToImage"] ??
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fillustrations%2Fnews-logo&psig=AOvVaw2G9Prr1HgZWmomXMXW9yXS&ust=1755932773227000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCNit0sftnY8DFQAAAAAdAAAAABAE',

          title: artical["title"] ?? 'No title available',
          description: artical["description"] ?? 'No description available',
        );
        articlList.add(articalModel);
      }

      return articlList;
    } on Exception catch (e) {
      return [];
    }
  }
}
