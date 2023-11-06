import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../utils/helpers/helpers_functions.dart';
import '../../controllers/home/news_view_controller.dart';
import 'image_news_card.dart';
import 'news_card_widget.dart';

class NewsArticleList extends StatelessWidget {
  const NewsArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsViewController newsController = NewsViewController();
    return SizedBox(
      height: KHelperFunctions.screenHeight(context) * .65,
      width: KHelperFunctions.screenWidth(context),
      child: FutureBuilder(
        future: newsController.fetchNewChannelHeadlinesApi(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {

            /// --LOADING INDICATOR
            return const Center(
              child: SpinKitCircle(
                size: 50,
                color: Colors.blue,
              ),
            );
          } else {

            /// -- NEWS ARTICLE LIST
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.articles!.length,
              itemBuilder: (BuildContext context, index) {
                return SizedBox(
                  child: Stack(
                    children: [

                      /// --NEWS IMAGE CARD
                      ImageNewsCard(
                        imgUrl: snapshot.data!.articles![index].urlToImage
                            .toString(),
                      ),

                      /// --NEWS SMALL CARD
                      Positioned(
                        bottom: 45,
                        left: 25,
                        child: NewsCardWidget(
                          title:
                          snapshot.data!.articles![index].title.toString(),
                          author:
                          snapshot.data!.articles![index].author.toString(),
                          date: snapshot.data!.articles![index].publishedAt
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
