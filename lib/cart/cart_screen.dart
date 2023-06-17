import 'package:flutter/material.dart';
import 'package:flutter_project/cart/cart_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.all(8),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
              Text('Mon panier',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.end),
            ])),
        Container(
          padding: EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            RichText(
              text: const TextSpan(
                text: 'Nb articles ',
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: '15',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'Prix total ',
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: '175 €',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ]),
        ),
        Expanded(
          child: Container(
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return const CartProduct();
                  })),
        ),
      ],
    );
  }
}
