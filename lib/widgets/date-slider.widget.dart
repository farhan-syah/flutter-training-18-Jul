// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DateSlider extends StatefulWidget {
  const DateSlider({Key? key}) : super(key: key);

  @override
  State<DateSlider> createState() => _DateSliderState();
}

class _DateSliderState extends State<DateSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => _CustomContainer(
                date: index + 1,
                active: currentIndex == index,
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
              )),
          separatorBuilder: ((context, index) => const SizedBox(
                width: 20,
                height: 10,
              )),
          itemCount: 30),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  final int date;
  final bool active;
  final GestureTapCallback onTap;

  const _CustomContainer({
    Key? key,
    required this.date,
    required this.active,
    required this.onTap,
  }) : super(key: key);

  Color getTextColor() {
    return active ? Colors.white : Colors.indigo;
  }

  Color getBackgroundColor() {
    return active ? Colors.indigo.shade700 : Colors.white;
  }

  // final Color textColor = Colors.white;
  // final Color bgColor = Colors.indigo.shade700;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Material(
          color: getBackgroundColor(),
          child: InkWell(
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$date',
                  style: TextStyle(color: getTextColor()),
                ),
                Text(
                  'Mon',
                  style: TextStyle(color: getTextColor()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
