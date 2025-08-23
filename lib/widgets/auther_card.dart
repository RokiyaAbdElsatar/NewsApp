import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  final String author;
  const AuthorCard({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.person, size: 18, color: Colors.amber),
        SizedBox(width: 8),
        Text(
          author,
          style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
