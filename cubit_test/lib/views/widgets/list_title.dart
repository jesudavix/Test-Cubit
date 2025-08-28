import 'package:cubit_test/model/user.dart';
import 'package:flutter/material.dart';

class ThListTitleBloc extends StatelessWidget {
  final UserModel user;
  const ThListTitleBloc({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Text(
      user.name,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}