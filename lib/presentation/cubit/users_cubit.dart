import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/models/users.dart';
import 'package:flutter_application_1/domain/repositories/users_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this.repository) : super(const UsersLoadingState());

  final UsersRepository repository;

  Future<void> getUsers() async {
    emit(UsersLoadingState());
    final users = await repository.getUsers();
    
    emit(UsersLoadedState(users));
    
  }
}
