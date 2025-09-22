import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber_app/presentation/models/category_model.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key});

  //TODO: do a product model for products and categorties

  final List<Products> productData = [
    Products(
      name: "  Banana",
      rate: "4.8 (287)",
      price: r"  $3.99",
      image: "assets/images/fruits/banana.png",
    ),
    Products(
      name: "  Pepper",
      rate: "4.8 (287)",
      price: r"  $3.99",
      image: "assets/images/fruits/pepper.png",
    ),
    Products(
      name: "  Orange",
      rate: "4.8 (287)",
      price: r"  $2.99",
      image: "assets/images/fruits/orange.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productData.length,
        itemBuilder: (context, index) {
          final productindex = productData[index];
          return Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Image.asset(
                        productindex.image,
                        height: 150,
                        width: 170,
                      ),
                    ),
                    Positioned(
                      bottom: -42,
                      right: -35,
                      child: SvgPicture.asset("assets/images/icons/Add.svg"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  productindex.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amberAccent,
                      size: 25,
                    ),
                    SizedBox(width: 3),
                    Text(productindex.rate!, style: TextStyle(fontSize: 18)),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  productindex.price!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
