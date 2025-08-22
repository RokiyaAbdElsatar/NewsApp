import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';


class CategoryList extends StatelessWidget {

  final void Function(String) onTap;
  final String selectedCategory;

  const CategoryList({super.key, required this.onTap, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height: 70,

                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 8),

                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                     final category = categories[index];
                     final isSelected = selectedCategory == category.name;
                    return Row(
                      children: [
                        CategoryCard(
                category: category,
                ontap: () => onTap(category.name), isSelected: isSelected,
              ),
                        SizedBox(width: 10),
                      ],
                    );
                  },
                ),
              )
;
  }
}