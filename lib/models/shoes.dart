class Shoes {
  Shoes({
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

  factory Shoes.fromJson(Map<String, dynamic> json) => Shoes(
    title: json['title'] as String,
    price: (json['price'] as num).toDouble(),
    description: json['description'] as String,
    image: json['image'] as String,
    category: json['category'] as String,
  );
}
