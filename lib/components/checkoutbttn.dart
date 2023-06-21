import 'package:flutter/material.dart';

class Checkoutbttn extends StatelessWidget {
  const Checkoutbttn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 94, 182, 31),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: Text(
            "Checkout",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}