import 'package:flutter/material.dart';

class CartViewItem extends StatelessWidget {
  const CartViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: EdgeInsets.all(5),
        height: 70,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Color(0xff0CA201),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset("assets/images/fruits/banana.png"),
                ),
              ),
              SizedBox(width: 5),
              VerticalDivider(thickness: 1.5, indent: 6, endIndent: 6),

              SizedBox(width: 5),
              Text(
                "View Basket",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
