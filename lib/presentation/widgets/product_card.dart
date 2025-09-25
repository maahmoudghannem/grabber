import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../functions/getters.dart';
import '../models/product_model.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final productsList = getProductData();

  List basketList = [];

  void toggleSelection(Products product) {
    setState(() {
      if (basketList.contains(product)) {
        basketList.remove(product);
      } else {
        basketList.add(product);
      }
    });
  }

  bool isSelected(Products product) => basketList.contains(product);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (context, index) {
          final productindex = productsList[index];
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
                      child: GestureDetector(
                        onTap: () => toggleSelection(productindex),
                        child: SvgPicture.asset("assets/images/icons/Add.svg"),
                      ),
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
