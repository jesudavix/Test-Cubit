import 'package:flutter/material.dart';

class ThAppBar extends StatelessWidget {
  final String name;
  const ThAppBar({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 50, 
      color: Colors.grey,
      alignment: Alignment.center,
      child: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 23,
        ),
      ),
    );
  }
}
