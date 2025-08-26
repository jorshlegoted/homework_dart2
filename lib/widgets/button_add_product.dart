import 'package:flutter/material.dart';

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