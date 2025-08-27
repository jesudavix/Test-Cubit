import 'package:cubit_test/views/bloc_screen.dart';
import 'package:cubit_test/views/cubit_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: CubitScreen(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              width: double.infinity,
              child: BlocScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
