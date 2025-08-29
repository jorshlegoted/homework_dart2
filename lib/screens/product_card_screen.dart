import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shoes.dart';
import 'package:flutter_application_1/widgets/button_add_product.dart';
import 'package:flutter_application_1/widgets/product_property.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    super.key,
  });

  final Shoes product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColorColor.fromARGB(199, 134, 238, 85))3),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 255, 52),
        title: Text('Карточка товара'),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row( children: [
            Container(
            decoration: BoxDecoration(border: Border.all()),
            margin: EdgeInsets.only(left: 20, top: 20),
            height: 250,
            width: 200,
            child: Image.network(
              product.photo,
              fit: BoxFit.cover),
            
          ),
          const SizedBox(width: 20),
          Padding(padding: EdgeInsetsGeometry.only(top: 20),
          child: 
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  ProductProperty(title: 'Тип товара:', description: 'Кроссовки'),
                  ProductProperty(title: 'Марка:', description: product.shoes.shoesType),
                  ProductProperty(title: 'Страна:', description: 'Вьетнам'),
                  ProductProperty(title: 'Размеры:', description: product.sizesNoBrackets()),
                  Text('Цена: ${product.costShoes} руб.'),
                ],
              ),),
              
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Описание товара:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.description),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            4,
            (generator) => Container(
              decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(100)),
              height: 80, 
              width: 80,
              child: Center(child: Text('Фото ${generator + 1}')),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context), 
            child: Text('Назад')),
        ),
      ),
    ],
    
        ),
      
      
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: ButtonAddProduct(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}