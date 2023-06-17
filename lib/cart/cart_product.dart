import 'package:flutter/material.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              child: Image.network(
                  'https://i.dummyjson.com/data/products/5/1.jpg',
                  scale: 6),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Nom du produit qui peut parfois être un peu long',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('49,00 €')),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      tooltip: 'Remove a product',
                      onPressed: () {},
                    ),
                    Text('3', style: TextStyle(fontSize: 18)),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      tooltip: 'Add a product',
                      onPressed: () {},
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('147,00 €',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
