class Category {
  final String name;
  final String imageUrl;

  Category({required this.name, required this.imageUrl});
}

List<Category> categories = [
  Category(name: 'General', imageUrl: 'assets/images/general.jpeg'),
  Category(name: 'Sports', imageUrl: 'assets/images/sport.jpg'),
  Category(name: 'Health', imageUrl: 'assets/images/food.jpg'),
  Category(name: 'Science', imageUrl: 'assets/images/medical.jpg'),
  Category(name: 'Business', imageUrl: 'assets/images/bussiness.jpg'),
  Category(name: 'Technology', imageUrl: 'assets/images/1.jpg'),
];
