import 'package:flutter/material.dart';
import 'package:training_18_jul/const.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(50),
        color: Colors.lightBlue.shade50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Container(
              color: Colors.grey.withAlpha(100),
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: const Center(child: Text('Image Here')),
            ),
            // Header
            const Text(
              'Manage your daily tasks',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Subheadline
            const Text(
              'Team and Project management with solution providing App',
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Button
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(6, 8),
                        color: Colors.black.withAlpha(50),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
