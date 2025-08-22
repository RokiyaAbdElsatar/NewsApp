import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsList extends StatefulWidget {
  final String selectedCategory;
  NewsList({super.key, required this.selectedCategory});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<NewsModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  void didUpdateWidget(covariant NewsList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedCategory != widget.selectedCategory) {
      getData();
    }
  }

  Future<void> getData() async {
    print("Loading articles for category: ${widget.selectedCategory}");
    articles = await NewsService(
      Dio(),
    ).getNewsByCategory(widget.selectedCategory);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    NewsCard(article: articles[index]),
                    SizedBox(height: 15),
                  ],
                );
              },
            ),
          );
  }
}
