import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news_api_app/features/home/controllers/home/news_view_controller.dart';
import 'package:news_api_app/utils/constants/enums_text.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(KSizes.appBarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Size get preferredSize => const Size.fromHeight(KSizes.appBarHeight);

  final NewsViewController newsController = NewsViewController();
  NewsFilterList? selectMenu;

  String name = 'bbc-news';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset(KImages.categoryLogo, height: 25, width: 25),
      ),
      title: Row(
        children: [
          Text(
            'appbar_title'.tr,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ],
      ),
      actions: [
        PopupMenuButton<NewsFilterList>(
          icon: Icon(Iconsax.more, color: Colors.black),
          initialValue: selectMenu,
          surfaceTintColor: KColors.white,
          onSelected: (NewsFilterList item) {
            print("Selected item: ${item.name}");
            if (NewsFilterList.bbcNews.name == item.name) {
              name = 'bbc-news';
            }
            if (NewsFilterList.googleNews.name == item.name) {
              name = 'google-news';
            }
            if (NewsFilterList.reuters.name == item.name) {
              name = 'reuters';
            }
            if (NewsFilterList.alJazeera.name == item.name) {
              name = 'al-jazeera-english';
            }
            if (NewsFilterList.engadgetNews.name == item.name) {
              name = 'engadget';
            }
            if (NewsFilterList.abcNews.name == item.name) {
              name = 'abc-news';
            }

            newsController.fetchNewChannelHeadlinesApi();
            // setState(() {
            //   selectMenu = item;
            // });
          },
          itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<NewsFilterList>>[
            const PopupMenuItem<NewsFilterList>(
              value: NewsFilterList.bbcNews,
              child: Text('BBC News'),
            ),
            const PopupMenuItem(
              value: NewsFilterList.googleNews,
              child: Text('Google News'),
            ),
            const PopupMenuItem(
              value: NewsFilterList.alJazeera,
              child: Text('Al Jazeera'),
            ),
            const PopupMenuItem(
              value: NewsFilterList.engadgetNews,
              child: Text('Engadget'),
            ),
            const PopupMenuItem(
              value: NewsFilterList.abcNews,
              child: Text('ABC News'),
            ),
            const PopupMenuItem(
              value: NewsFilterList.reuters,
              child: Text('Reuters'),
            ),
          ],
        ),
      ],
    );
  }
}
