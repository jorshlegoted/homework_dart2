import 'package:flutter/material.dart';
import 'profession.dart';

void main() {
  runApp(MyApp());
  
}
final vasya = Human(name: 'Вася', age: 20, profession: ProfessionType.student, gender: GenderType.male);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(200, 238, 255, 3),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 1, 255),
          title: Text(vasya.name, style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            
            // Container(height: 400, width: 400, color: Color.fromARGB(186, 211, 230, 108), child: 
            Container(height: 400, width: 500, color: Colors.amber, alignment: Alignment.centerRight,
            child: Text('Описание профиля: \nПол: ${vasya.gender.genderType}\nВозраст: ${vasya.age}\nДолжность: ${vasya.profession.professionType}'),),
            
            
          ],
        ),
        
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 47, 189, 111),
        
          
          child: Icon(Icons.favorite),

        
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      )
    );
          
  }
}

class Human {
  const Human({required this.name, required this.age, required this.profession, required this.gender});

  final String name;
  final int age;
  final GenderType gender;
  final ProfessionType profession;


  @override
  String toString() => 'Имя $name\nВозраст: $age\nДолжность: ${profession.professionType}\nПол: ${gender.genderType}';
}

enum GenderType {
  male('Мужской'),
  woman('Женский');

  final String genderType;
  const GenderType(this.genderType);
}



