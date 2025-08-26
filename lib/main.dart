import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/shoes_enum.dart';
import 'package:flutter_application_1/models/shoes.dart';
import 'package:flutter_application_1/screens/product_card_screen.dart';


void main() {
  runApp(MyApp());
  
}

final nikeAir = Shoes(
  shoes: ShoesType.nikeAir, 
  costShoes: 5000, 
  description: 
  'Хорошие кроссовки в них очень удобно. Благодарность тем кто их производит. Иначе бы их было ограниченно. Не промокают в дождливую погоду. Фильтрует грязь, нет необходимости стирать. Отлично подходит для футбола',
  photo: 'https://ir.ozone.ru/s3/multimedia-1-8/wc1000/7354460960.jpg');

final asics = Shoes(
  shoes: ShoesType.asics, 
  costShoes: 25000, 
  description: 
  'С встроенным зонтиком. Даёт свежесть ногам. Охлаждает в жару. Есть кондиционер. Удобно бегать по песку',
  photo: 'https://ir.ozone.ru/s3/multimedia-1-6/wc1000/7534281714.jpg');


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductCard(product: asics));
          
  }
}






