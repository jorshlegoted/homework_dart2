import 'package:dio/dio.dart';
import 'package:flutter_application_1/domain/models/users.dart';

class UsersApi {
  final Dio dio;

  UsersApi({required this.dio});

  Future<List<Users>> getUsers() async {
    final url = "https://jsonplaceholder.typicode.com/users";

    try {
      final response = await dio.get(url);
      print('path: $url');

      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((e) => Users.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Failed to load users: $e');
    }
  }
}