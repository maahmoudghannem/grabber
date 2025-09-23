import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber_app/presentation/widgets/banners_item.dart';
import 'package:grabber_app/presentation/widgets/cart_view_item.dart';
import 'package:grabber_app/presentation/widgets/category_item.dart';
import 'package:grabber_app/presentation/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  // TODO: do a product model for products and categorties

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delivery_dining_outlined),
            ),
            Text(
              "61 Hopper street..",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down_rounded, size: 32),
            ),
            Spacer(),
            SvgPicture.asset("assets/images/icons/basket.svg"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BannersItem(),
              SizedBox(height: 20),
              CategoryItem(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fruits",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0CA201),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ProductCard(),
              CartViewItem(),
              // SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
