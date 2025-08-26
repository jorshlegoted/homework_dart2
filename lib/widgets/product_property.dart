import 'package:flutter/material.dart';

class ProductProperty extends StatelessWidget {
  const ProductProperty({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Text(description),
      ],
    );
  }
}