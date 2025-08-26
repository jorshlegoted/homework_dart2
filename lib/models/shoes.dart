import 'package:flutter_application_1/enums/shoes_enum.dart';

class Shoes {
  Shoes({required this.shoes, required this.costShoes, required this.description, required this.photo});

  final ShoesType shoes;
  final int costShoes;
  List<int> get sizes => [40, 41, 42, 43, 44];
  final String description;
  final String photo;

  String sizesNoBrackets() {
    return sizes.join(", ");
  }
}