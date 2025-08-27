part of 'user_bloc.dart';


sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoading extends UserState{}

final class UserLoaded extends UserState{
  List<UserModel> users;

  UserLoaded(this.users);
}

final class UserError extends UserState{
  String message;

  UserError(this.message);
}
