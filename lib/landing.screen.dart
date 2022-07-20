import 'package:flutter/material.dart';
import 'package:training_18_jul/const.dart';
import 'package:training_18_jul/home.screen.dart';

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
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/pngegg.png'),
            ),
            // Header
            Text(
              'Manage your daily tasks',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: textColor1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Subheadline
            Text(
              'Team and Project management with solution providing App',
              style: TextStyle(
                fontSize: 16,
                color: textColor1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Button
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Stack(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: textColor1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
