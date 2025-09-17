import 'package:dio/dio.dart';
import 'package:flutter_application_1/domain/models/product.dart';

class ProductsApi {
  final Dio dio;

  ProductsApi({required this.dio});

  Future<List<Product>> getProducts() async {
    final url = "https://fakestoreapi.com/products/";

    try {
      final response = await dio.get(url);
      print('path: $url');

      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((e) => Product.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load shoes');
      }
    } catch (e) {
      throw Exception('Failed to load shoes: $e');
    }
  }
}
