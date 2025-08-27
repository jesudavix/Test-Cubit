import 'package:cubit_test/controller/bloc/user_bloc.dart';
import 'package:cubit_test/views/widgets/elevated_button_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonBloc(),
        Expanded(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if(state is UserLoading){
                return const Center(child: CircularProgressIndicator());
              } else{
                return Text("Fallo");
              }
            },
          ) ,
        ),
      ],
    );
  }
}

