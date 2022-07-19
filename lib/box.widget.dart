import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color color;
  final int number;

  const Box({
    required this.color,
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Center(
        child: Text(
          '$number',
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
