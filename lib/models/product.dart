class Product {
  String thumbnail;
  String category;
  String title;
  double rating;
  String description;
  int price;

  Product(
      {required this.thumbnail,
      required this.category,
      required this.title,
      required this.rating,
      required this.description,
      required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      thumbnail: json['thumbnail'].toString(),
      category: json['category'].toString(),
      title: json['title'].toString(),
      rating: json['rating'],
      description: json['description'].toString(),
      price: json['price'],
    );
  }
}
