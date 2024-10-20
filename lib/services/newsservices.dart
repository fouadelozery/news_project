import 'package:dio/dio.dart';
import 'package:flutter_application_2/models/articalmodel.dart';

class Newsservices {
  final Dio dio;
  Newsservices(this.dio);
  Future<List<Articalmodel>> getnews({required String catogry}) async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=ace4282bf5b54611a489600a35a1c92d&category=$catogry');
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    List<Articalmodel> articallist = [];

    for (var article in articles) {
      Articalmodel articalmodel1 = Articalmodel(
          image: article['urlToImage'],
          title: article['title'],
          describtion: article['description']);
      articallist.add(articalmodel1);
      print(articallist);
    }
    return articallist;
  }

  void getsports() async {
    final response = await dio.get('https://dummyjson.com/products');
    print(response);
  }
}
