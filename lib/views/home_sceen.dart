import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/news_list.dart';

class HomeSrceen extends StatefulWidget {
  const HomeSrceen({super.key});

  @override
  State<HomeSrceen> createState() => _HomeSrceenState();
}

class _HomeSrceenState extends State<HomeSrceen> {
  String selectedCategory = 'General';

  void onCategoryTap(String categoryName) {
    print("The selected category is: $categoryName");
    setState(() {
      selectedCategory = categoryName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              CategoryList(
                onTap: onCategoryTap,
                selectedCategory: selectedCategory,
              ),
              NewsList(selectedCategory: selectedCategory),
            ],
          ),
        ),
      ),
    );
  }
}
