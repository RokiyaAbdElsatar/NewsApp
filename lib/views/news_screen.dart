import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/auther_card.dart';
import 'package:news_app/widgets/news_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class NewsDetailScreen extends StatelessWidget {
  final NewsModel article;
  const NewsDetailScreen({super.key, required this.article});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(text: "News "),
                TextSpan(
                  text: "Cloud",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                article.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 15),
              Text(
                DateFormat.yMMMMd().format(article.publishedAt),
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 15),
              NewsImage(imageUrl: article.imageURL),
              SizedBox(height: 15),

              AuthorCard(author: article.author),
              SizedBox(height: 15),
              Text(
                article.description.toString(),
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              SizedBox(height: 15),
              Text(
                article.content.split('[').first.trim(),
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton.icon(
              onPressed: () => _launchURL(article.url),
              icon: Icon(Icons.open_in_new, color: Color(0xFFC49A03)),
              label: Text('Read Full Article'),
              style: TextButton.styleFrom(foregroundColor: Color(0xFFC49A03)),
            ),
          ],
        ),
      ),
    );
  }
}
