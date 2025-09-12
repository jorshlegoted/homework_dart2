import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shoes.dart';
import 'package:flutter_application_1/screens/form_home_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class LoadingHomeScreen extends StatefulWidget {
  const LoadingHomeScreen({super.key});

  @override
  State<LoadingHomeScreen> createState() => _LoadingHomeScreenState();
}

class _LoadingHomeScreenState extends State<LoadingHomeScreen> {
  final _dio = Dio();
  final _url = "https://fakestoreapi.com/products/";
  late List<Shoes> _shoesList;
  bool _isLoaded = false;

  Future<void> fetchShoesList() async {
    try {
      final response = await _dio.get(_url);

      if (response.statusCode == 200) {
        setState(() {
          _shoesList = (response.data as List)
              .map((json) => Shoes.fromJson(json))
              .toList();
          _isLoaded = true;
        });
      } else {
        throw Exception('Failed to load shoes');
      }
    } catch (e) {
      throw Exception('Failed to load shoes $e');
    }
  }

  //   Future<List<Shoes>> fetchShoesList() async {
  //   final response = await Dio().get(_url);
  //   final List<Shoes> loaded = (response.data as List)
  //       .map((json) => Shoes.fromJson(json))
  //       .toList();
  //   return loaded;
  // }

  @override
  void initState() {
    super.initState();
    fetchShoesList();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoaded) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => FormHomeScreen(shoes: _shoesList)),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Загрузочный экран')),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
