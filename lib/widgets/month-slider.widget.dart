import 'package:flutter/material.dart';

class MonthSlider extends StatelessWidget {
  const MonthSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData(size: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 80,
              child: Row(
                children: const [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 10),
                  Text('Mar'),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'April',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('May'),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const month = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'June',
  'July',
  'Aug',
  'Sept',
  'Oct',
  'Nov',
  'Dec',
];
