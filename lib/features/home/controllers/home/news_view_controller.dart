import 'package:news_api_app/data/repositories/news_repository.dart';
import 'package:news_api_app/features/home/models/news_channel_headlines_model.dart';

class NewsViewController {
  final _rep = NewsRepository();

  Future<NewsChannelHeadlinesModel> fetchNewChannelHeadlinesApi() async {
    final response = await _rep.fetchNewChannelHeadlinesApi();
    return response;
  }
}
