class NewsModel {
  final String imageURL;
  final String title;
  final String description;
  final String author;
  final String content;
  final String url;
  final DateTime publishedAt;

  NewsModel({
    required this.imageURL,
    required this.title,
    required this.description,
    required this.author,
    required this.content,
    required this.url,
    required this.publishedAt,
  });
}
