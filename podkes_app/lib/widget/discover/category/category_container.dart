import 'package:flutter/material.dart';
import 'package:podkes_app/widget/discover/category/category_card.dart';

// A stateless widget that displays a horizontal list of category cards
class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard(title: "All"),
          CategoryCard(title: "Life"),
          CategoryCard(title: "Comedy"),
          CategoryCard(title: "Tech"),
        ],
      ),
    );
  }
}
