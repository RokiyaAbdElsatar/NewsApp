import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  final String imageUrl;
  const NewsImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 200,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            'assets/images/news.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 250,
          );
        },
      ),
    );
  }
}
