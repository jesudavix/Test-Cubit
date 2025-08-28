import 'package:bloc/bloc.dart';
import 'package:cubit_test/model/post.dart';
import 'package:cubit_test/services/json_api.dart';

part 'user_state.dart';

class PostCubit extends Cubit<PostState> {
  JsonPlaceHolderAPI api;
  PostCubit(this.api) : super(PostInitial());

  Future<void> buscarPost() async {
    emit(PostLoading());
    try {
      final posts =  await api.getPost();
      emit(PostLoaded(posts));
    } catch (e) {
      emit(PostError(e.toString()));
    }
  }
}
