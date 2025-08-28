import 'package:cubit_test/controller/cubit/user_cubit.dart';
import 'package:cubit_test/views/widgets/elevated_button_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostState>(
      builder: (context, state) {
        if (state is PostInitial) {
          return Center(
            child: ButtonCubit(
              text: "Buscar Post",
              backgroundColor: Colors.black,
            ),
          );
        } else if (state is PostLoading) {
          return Center(child: CircularProgressIndicator(color: Colors.black));
        } else if (state is PostLoaded) {
          return ListView.builder(
            itemCount: state.post.length,
            itemBuilder: (context, index) {
              final post = state.post[index];
              return ListTile(
                title: Text(
                  post.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  post.body,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            },
          );
        }else if(state is PostError){
          return Center(child: Text(state.message),);
        }
        return SizedBox();
      },
    );
  }
}
