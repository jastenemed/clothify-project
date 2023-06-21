import 'package:flutter/material.dart';

class Carttile extends StatelessWidget {
  final String imagePath;
  const Carttile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Image.asset(
        imagePath,
        height: 30,
        width: 30,
      ),
    );
  }
}
