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
              children: const [
                ImageContainer(
                  assetImagePath: 'assets/images/profile_pic_men.webp',
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
              style: TextStyle(
                fontSize: 32,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              '6 Tasks are pending',
              style: TextStyle(fontSize: 16, color: textColor3),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.black.withAlpha(20),
                        offset: const Offset(0, 5))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Mobile App Design',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Mike and Anita',
                    style: TextStyle(color: textColor3),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      //Left component
                      Expanded(
                        child: Stack(
                          children: const [
                            ImageContainer(
                                assetImagePath:
                                    'assets/images/profilePic2.jpeg'),
                            Padding(
                              padding: EdgeInsets.only(left: 28),
                              child: ImageContainer(
                                  assetImagePath:
                                      'assets/images/profilePic3.jpeg'),
                            )
                          ],
                        ),
                      ),
                      // Right component
                      Text(
                        'Now',
                        style: TextStyle(color: textColor3, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String assetImagePath;

  const ImageContainer({
    required this.assetImagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: CircleAvatar(backgroundImage: AssetImage(assetImagePath)),
    );
  }
}
