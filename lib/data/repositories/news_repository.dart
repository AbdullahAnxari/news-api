import 'dart:convert';

import 'package:news_api_app/features/home/models/news_channel_headlines_model.dart';
import 'package:http/http.dart' as http;
import 'package:news_api_app/utils/http/http_client.dart';

class NewsRepository {

  Future<NewsChannelHeadlinesModel> fetchNewChannelHeadlinesApi() async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=15feb4688f8d459083e54f8de7936368';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelHeadlinesModel.fromJson(body);
    }
    throw Exception('Error');
  }
}
