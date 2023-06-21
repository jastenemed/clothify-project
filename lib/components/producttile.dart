import 'package:flutter/material.dart';

class Producttile extends StatelessWidget {
  final String imagePath;
  const Producttile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
