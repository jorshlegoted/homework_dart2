import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/shoes_enum.dart';
import 'package:flutter_application_1/models/shoes.dart';
import 'package:flutter_application_1/screens/product_card_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Shoes> shoes;
  const HomeScreen({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          centerTitle: true,
          backgroundColor: Color.fromARGB(216, 60, 247, 54),
          title: Text('Кроссовки'),
        ),
        body: ListView.separated(
          itemCount: shoes.length,
          itemBuilder: (context, index) {
            final product = shoes[index];

            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductCard(product: product),
                ),
              ),
              child: ListTile(
                leading: Image.network(
                  shoes[index].image,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,

                  errorBuilder: (context, error, stackTrace) {
                    print('Ошибка загрузки картинки: $error');
                    return const Icon(Icons.broken_image, size: 80);
                  },
                ),
                title: Text(shoes[index].title),
                subtitle: Text(shoes[index].description),
                trailing: Icon(Icons.arrow_forward),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
        ),
      ),
    );
  }
}
