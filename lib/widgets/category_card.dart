import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final Function() ontap;
  final bool isSelected; 

  const CategoryCard({
    super.key,
    required this.category,
    required this.ontap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(16),
        width: 150,
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Colors.amber.withOpacity(0.6) : Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: isSelected
              ? Border.all(color: Colors.amberAccent, width: 2)
              : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.amberAccent.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  )
                ]
              : [],
          image: DecorationImage(
            image: AssetImage(
              category.imageUrl.isNotEmpty
                  ? category.imageUrl
                  : 'assets/images/news.jpg',
            ),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Text(
          category.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
