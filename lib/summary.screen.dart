import 'package:flutter/material.dart';
import 'package:training_18_jul/widgets/date-slider.widget.dart';
import 'package:training_18_jul/widgets/image-container.widget.dart';
import 'package:training_18_jul/widgets/month-slider.widget.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.blueGrey.shade100),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ImageContainer(
                  assetImagePath: 'assets/images/profile_pic_men.webp'),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            MonthSlider(),
            DateSlider(),
          ],
        ),
      ),
    );
  }
}
