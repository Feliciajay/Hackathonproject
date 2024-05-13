import 'package:flutter/material.dart';

class SocialBotton extends StatelessWidget {
  final String imagePath;
  const SocialBotton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(
        imagePath,
        height: 56,
        width: 56,
      ),
    );
  }
}
