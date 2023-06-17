import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Image(
            image:
                NetworkImage('https://i.dummyjson.com/data/products/5/1.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.all(6),
          child: const Text('Catégorie', textAlign: TextAlign.left),
        ),
        Container(
          padding: EdgeInsets.all(6),
          child: const Text('Nom du produit qui peut parfois être un peu long',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
        ),
        Container(
          padding: EdgeInsets.all(6),
          child: Row(
            children: const [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_outline),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(6),
          child: const Text(
              'Description du produit qui peut faire un certain nombre de lignes alors autant lui laisser un peu de place',
              textAlign: TextAlign.left),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '49,00 €',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  tooltip: 'Add to cart',
                  onPressed: () {},
                ),
              ],
            ))
      ],
    ));
  }
}
