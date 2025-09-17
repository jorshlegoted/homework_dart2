part of 'users_cubit.dart';

sealed class UsersState extends Equatable {
  const UsersState();

  @override
  List<Object?> get props => [];
}

class UsersLoadingState extends UsersState {
  const UsersLoadingState();
}

class UsersLoadedState extends UsersState {
  const UsersLoadedState(this.usersList);

  final List<Users> usersList;

  @override
  List<Object?> get props => [usersList];
}

class UsersErrorState extends UsersState {
  const UsersErrorState(this.error);

  final String? error;

  @override
  List<Object?> get props => [error];

}
