import 'package:equatable/equatable.dart';

class Product extends Equatable{
  Product({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });

  final String title;
  final double price;
  final String category;
  //List<int> get sizes => [40, 41, 42, 43, 44];
  final String description;
  final String image;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    title: json['title'] as String,
    price: (json['price'] as num).toDouble(),
    description: json['description'] as String,
    image: json['image'] as String,
    category: json['category'] as String,
  );
  
  @override
  List<Object?> get props => [title, price, description, image, category];
}
