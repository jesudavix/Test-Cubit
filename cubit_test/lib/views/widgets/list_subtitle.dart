import 'package:cubit_test/model/user.dart';
import 'package:flutter/material.dart';

class ThSubtitle extends StatelessWidget {
  final UserModel user;
  const ThSubtitle({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Text(
      user.phone,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}