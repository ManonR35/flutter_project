import 'package:flutter/material.dart';
import 'package:flutter_project/shop/product_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/product.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreen();
}

class _ShopScreen extends State<ShopScreen> {
  List<dynamic> products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        products = data['products'];
        print(data['products']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.5,
          ),
          primary: false,
          itemCount: 12,
          padding: EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
            final product = Product.fromJson(products[index]);

            return ProductCard(product: product);
          }),
    );
  }
}
