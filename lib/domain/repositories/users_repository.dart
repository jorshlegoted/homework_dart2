import 'package:flutter_application_1/data/users_api.dart';
import 'package:flutter_application_1/domain/models/users.dart';

class UsersRepository {
  final UsersApi usersApi;
  UsersRepository({required this.usersApi});

  Future<List<Users>> getUsers() => usersApi.getUsers();
}