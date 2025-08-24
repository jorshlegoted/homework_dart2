import 'package:flutter_application_1/enums/shoes_enum.dart';

class Shoes {
  Shoes(this.shoes, this.cost);

  final ShoesType shoes;
  final ShoesType cost;
  List<int> sizes = [40, 41, 42, 43, 44];

  String sizesNoBrackets() {
    return sizes.join(", ");
  }
}