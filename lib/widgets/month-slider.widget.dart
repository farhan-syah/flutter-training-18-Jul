import 'package:flutter/material.dart';

class MonthSlider extends StatefulWidget {
  const MonthSlider({Key? key}) : super(key: key);

  @override
  State<MonthSlider> createState() => _MonthSliderState();
}

class _MonthSliderState extends State<MonthSlider> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData(size: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              index--;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 80,
              child: Row(
                children: [
                  const Icon(Icons.arrow_back),
                  const SizedBox(width: 10),
                  Text(month[index - 1]),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                month[index],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              index++;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(month[index + 1]),
                  const SizedBox(width: 10),
                  const Icon(Icons.arrow_forward),
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
