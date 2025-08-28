part of 'user_cubit.dart';


sealed class PostState {}

final class PostInitial extends PostState {}

final class PostLoading extends PostState {}

final class PostLoaded extends PostState {
  final List<PostModel> post;

  PostLoaded(this.post);
}

final class PostError extends PostState {
  String message;

  PostError(this.message);
}


