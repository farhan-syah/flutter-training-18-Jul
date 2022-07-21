// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DateSlider extends StatelessWidget {
  const DateSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CustomContainer(
      date: 1,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  final int date;

  _CustomContainer({
    Key? key,
    required this.date,
  }) : super(key: key);

  final Color textColor = Colors.white;
  final Color bgColor = Colors.indigo.shade700;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$date',
            style: TextStyle(color: textColor),
          ),
          Text(
            'Mon',
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
