import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key});

  final List<Products> category = [
    Products(name: "Fruits", image: "assets/images/category/fruits.png"),
    Products(name: "Milk & egg", image: "assets/images/category/dairy.png"),
    Products(name: "Beverage", image: "assets/images/category/beverage.png"),
    Products(name: "Laundary", image: "assets/images/category/laundry.png"),
    Products(name: "Vegetables", image: "assets/images/category/vegtables.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final categoryIndex = category[index];
          return Column(
            children: [
              SizedBox(
                width: 120,
                height: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  // Color(0xfff6f6f6),
                  child: Image.asset(categoryIndex.image, height: 65),
                ),
              ),
              SizedBox(height: 12),
              Text(
                categoryIndex.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          );
        },
        itemCount: category.length,
      ),
    );
  }
}
