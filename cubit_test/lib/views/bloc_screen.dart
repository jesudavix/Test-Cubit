import 'package:cubit_test/controller/bloc/user_bloc.dart';
import 'package:cubit_test/views/widgets/elevated_button_bloc.dart';
import 'package:cubit_test/views/widgets/list_subtitle.dart';
import 'package:cubit_test/views/widgets/list_title.dart';
import 'package:cubit_test/views/widgets/list_trailing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserInitial) {
          return Center(
            child: ButtonBloc(
              text: "Buscar Usuarios",
              backgroundColor: Colors.blue,
            ),
          );
        } else if (state is UserLoading) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.blue),
          );
        } else if (state is UserLoaded) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.users.length,
            itemBuilder: (context, index) {
              final user = state.users[index];
              return ListTile(
                title: ThListTitleBloc(user: user),
                subtitle: ThSubtitleBloc(user: user),
                leading: Icon(Icons.person),
                trailing: ThListTrailingBloc(user: user),
              );
            },
          );
        } else if (state is UserError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox();
      },
    );
  }
}
