import 'package:flutter/material.dart';
import 'package:training_18_jul/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profile_pic_men.webp')),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hi Ghulam',
              style: TextStyle(fontSize: 36, color: textColor2),
            ),
            const SizedBox(height: 5),
            Text(
              '6 Tasks are pending',
              style: TextStyle(fontSize: 16, color: textColor3),
            ),
          ],
        ),
      ),
    );
  }
}
