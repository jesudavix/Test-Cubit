import 'package:bloc/bloc.dart';
import 'package:cubit_test/model/user.dart';
import 'package:cubit_test/services/json_api.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final JsonPlaceHolderAPI api;

  UserBloc(this.api) : super(UserInitial()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoading());
      try {
        final users = await api.getUser();
        emit (UserLoaded(users));
      } catch (e) {
        emit (UserError(e.toString()));
      }
    });
  }
}
