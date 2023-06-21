import 'package:flutter/material.dart';

class Nametile extends StatelessWidget {
  final String imagePath;
  const Nametile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 230,
      child: Image.asset(
        imagePath,
        height: 30,
        width: 30,
      ),
    );
  }
}
