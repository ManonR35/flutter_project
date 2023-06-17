import 'package:flutter/material.dart';
import 'package:flutter_project/shop/product_card.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.5,
          ),
          primary: false,
          itemCount: 12,
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
            return ProductCard();
          }),
    );
  }
}
