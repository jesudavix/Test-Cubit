import 'package:cubit_test/model/user.dart';
import 'package:flutter/material.dart';

class ThListTrailingBloc extends StatelessWidget {
  final UserModel user;
  const ThListTrailingBloc({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Text(
      user.email,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
    );
  }
}