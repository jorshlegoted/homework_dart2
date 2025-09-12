import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shoes.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class FormHomeScreen extends StatefulWidget {
  const FormHomeScreen({super.key, required this.shoes});

  final List<Shoes> shoes;

  @override
  State<FormHomeScreen> createState() => _FormHomeScreenState();
}

class _FormHomeScreenState extends State<FormHomeScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Авторизация'),
        backgroundColor: Color.fromARGB(216, 60, 247, 54),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const SizedBox(height: 24),  
                  TextFormField(
                    // ИМЯ
                    validator: (value) {
                      if(value == null || value.trim().isEmpty) {
                        return 'Введите имя';
                      } else if (value.trim().length < 2) {
                        return 'Имя должно быть не менее 2 символов';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color.fromARGB(235, 155, 110, 13),
                      suffixIcon: Icon(Icons.clear),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    // ВВОД ПАРОЛЯ
                    validator: (value) {
                      if(value == null || value.trim().isEmpty) {
                        return 'Введите пароль';
                      } else if (value.trim().length < 6) {
                        return 'Длина пароля должна быть не менее 6 символов';
                      } else {
                        return null;
                      }
                    },
                    obscureText: _isPasswordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Color.fromARGB(235, 155, 110, 13),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        child: Icon(_isPasswordVisible ? Icons.visibility_off : Icons.remove_red_eye)),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {
                      final isValid = _formKey.currentState?.validate();

                      if(isValid ?? false) {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen(shoes: widget.shoes)));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Пожалуйста заполните поля'))
                        );
                      }
                    }, child: Text('Войти')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}