import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/models/product.dart';
import 'package:flutter_application_1/domain/models/users.dart';
import 'package:flutter_application_1/widgets/button_add_product.dart';
import 'package:flutter_application_1/widgets/product_property.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    required this.user,
    super.key,
  });

  final Users user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColorColor.fromARGB(199, 134, 238, 85))3),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 255, 52),
        title: Text('Карточка пользователя'),
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Image.network(
                // user.image,
                // fit: BoxFit.cover,
                // width: double.infinity,
                // height: double.infinity,),

                Positioned(
                  child: Icon(Icons.favorite, color: Color.fromARGB(237, 245, 53, 53), size: 50),
                  right: 0,
                  top: 0,),
              ],
            ),
            ),
          const SizedBox(width: 20),
          Expanded(
            child: Padding(padding: EdgeInsetsGeometry.only(top: 20),
            child: 
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    ProductProperty(title: 'Имя:', description: user.name),
                    ProductProperty(title: 'Email:', description: user.email),
                    ProductProperty(title: 'Телефон:', description: user.phone),
                    //ProductProperty(title: 'Размеры:', description: product.sizesNoBrackets()),
                    //Text('Цена: ${product.price} руб.'),
                  ],
                ),),
          ),
              
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Описание страницы:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text(product.description),
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
      
      
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 28),
      //   child: Padding(
      //     padding: const EdgeInsets.only(bottom: 48),
      //     child: ButtonAddProduct(),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}