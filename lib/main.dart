import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/products_api.dart';
import 'package:flutter_application_1/data/users_api.dart';
import 'package:flutter_application_1/domain/repositories/products_repository.dart';
import 'package:flutter_application_1/domain/repositories/users_repository.dart';
import 'package:flutter_application_1/presentation/cubit/products_cubit.dart';
import 'package:flutter_application_1/presentation/cubit/users_cubit.dart';
import 'package:flutter_application_1/screens/form_home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// ПРОДУКТЫ
// final dio = Dio();
// final productsApi = ProductsApi(dio: dio);
// final repository = ProductsRepository(productsApi: productsApi);

// ПОЛЬЗОВАТЕЛИ
final dio = Dio();
final usersApi = UsersApi(dio: dio);
final repository = UsersRepository(usersApi: usersApi);


void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UsersCubit(repository),
      child: MaterialApp(
        home: FormHomeScreen()),
    );
          
  }
}






