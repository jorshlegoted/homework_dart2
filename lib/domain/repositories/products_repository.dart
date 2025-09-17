import 'package:flutter_application_1/data/products_api.dart';
import 'package:flutter_application_1/domain/models/product.dart';

class ProductsRepository {
  final ProductsApi productsApi;
  ProductsRepository({required this.productsApi});

  Future<List<Product>> getProducts() => productsApi.getProducts();
}