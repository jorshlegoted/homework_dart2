import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/shoes_enum.dart';
import 'package:flutter_application_1/domain/models/product.dart';
import 'package:flutter_application_1/presentation/cubit/products_cubit.dart';
import 'package:flutter_application_1/presentation/cubit/users_cubit.dart';
import 'package:flutter_application_1/screens/product_card_screen.dart';
import 'package:flutter_application_1/screens/user_card_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUserScreen extends StatelessWidget {
  const HomeUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          centerTitle: true,
          backgroundColor: Color.fromARGB(216, 60, 247, 54),
          title: Text('Знакомства:'),
        ),
        body: BlocBuilder<UsersCubit, UsersState>(
          builder: (_, state) {
            if (state is ProductsLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is UsersLoadedState) {
              return ListView.separated(
                itemCount: state.usersList.length,
                itemBuilder: (context, index) {
                  final user = state.usersList[index];

                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => UserCard(user: user),
                      ),
                    ),
                    child: ListTile(
                      // leading: Image.network(
                      //   user.image,
                      //   height: 80,
                      //   width: 80,
                      //   fit: BoxFit.cover,

                      //   errorBuilder: (context, error, stackTrace) {
                      //     print('Ошибка загрузки картинки: $error');
                      //     return const Icon(Icons.broken_image, size: 80);
                      //   },
                      // ),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
              );
            } else {
              return Center(child: Text('Ошибка'));
            }
          },
        ),
      ),
    );
  }
}