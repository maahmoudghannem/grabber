import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> category = [
      "assets/images/category/fruits.png",
      "assets/images/category/dairy.png",
      "assets/images/category/beverage.png",
      "assets/images/category/laundry.png",
      "assets/images/category/vegtables.png",
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CircleAvatar(
            radius: 63,
            backgroundColor: Colors.grey[200],
            // Color(0xfff6f6f6),
            child: Image.asset(category[index], height: 70),
          );
        },
        itemCount: category.length,
      ),
    );
  }
}
