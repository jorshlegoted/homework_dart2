import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/shoes_enum.dart';
import 'package:flutter_application_1/models/shoes.dart';


void main() {
  runApp(MyApp());
  
}

final nikeAir = Shoes(ShoesType.nikeAir, ShoesType.nikeAir);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              
            ),
            const SizedBox(width: 20),
            Padding(padding: EdgeInsetsGeometry.only(top: 20),
            child: 
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Тип товара:'),
                    Text('Кроссовки'),
                    Text(''),
                    Text('Марка:'),
                    Text('${nikeAir.shoes.shoesType}'),
                    Text(''),
                    Text('Страна:'),
                    Text('Вьетнам'),
                    Text(''),
                    Text('Размеры:'),
                    Text('${nikeAir.sizesNoBrackets()}'),
                    Text(''),
                    Text('Цена: ${nikeAir.cost.costShoes} руб.'),
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
              Text('Хорошие кроссовки в них очень удобно.'),
              Text('Благодарность тем кто их производит'),
              Text('Иначе бы их было ограниченно'),
              Text('Не промокают в дождливую погоду'),
              Text('Фильтрует грязь, нет необходимости стирать'),
              Text('Отлично подходит для футбола'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(100)),
                height: 80, 
                width: 80,
              ),
                Container(
                decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(100)),
                height: 80, 
                width: 80,
              ),
                Container(
                decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(100)),
                height: 80, 
                width: 80,
              ),
                Container(
                decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(100)),
                height: 80, 
                width: 80,
              ),
            ],
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
      )
    );
          
  }
}

class ButtonAddProduct extends StatelessWidget {
  const ButtonAddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('The product was added');
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Color.fromARGB(255, 250, 143, 3), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Добавить в корзину', style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}




