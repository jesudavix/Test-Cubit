import 'package:cubit_test/controller/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonBloc extends StatelessWidget {
  const ButtonBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<UserBloc>().add(LoadUserEvent());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        "Buscar Usuarios",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
