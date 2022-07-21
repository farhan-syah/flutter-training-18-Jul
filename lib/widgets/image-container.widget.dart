import 'package:flutter/material.dart';

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
