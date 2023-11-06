import 'package:flutter/material.dart';
import 'package:news_api_app/features/home/screens/widgets/AppBar.dart';
import 'package:news_api_app/features/home/screens/widgets/news_article_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        children: [
          /// --News article list
          const NewsArticleList(),
        ],
      ),
    );
  }
}
