import 'package:cubit_test/controller/bloc/user_bloc.dart';
import 'package:cubit_test/controller/cubit/user_cubit.dart';
import 'package:cubit_test/services/json_api.dart';
import 'package:cubit_test/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc(JsonPlaceHolderAPI())),
        BlocProvider(create: (context) => PostCubit(JsonPlaceHolderAPI())),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
