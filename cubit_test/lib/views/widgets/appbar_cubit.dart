import 'package:flutter/material.dart';

class AppBarCubit extends StatelessWidget {
  const AppBarCubit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Center(
        child: Center(
          child: Text(
            "CUBIT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}