class PostModel {
  final List<Product>? product;
  const PostModel({required this.product});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        product: List<Product>.from(
            json['products'].map((product) => Product.fromJson(product))));
  }
}

class Product {
  final int? id;
  final String? title;
  final String? description;
  final int? price;
  final num? discountPercent;
  final num? ratings;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbNail;
  final List<dynamic>? image;

  const Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercent,
      required this.ratings,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbNail,
      required this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        description: json['body'],
        price: json['userId'],
        discountPercent: json['tags'],
        ratings: json['reactions'],
        stock: json['stock'],
        brand: json['brand'],
        category: json['category'],
        thumbNail: json['thumbnail'],
        image: json['images']);
  }
}
