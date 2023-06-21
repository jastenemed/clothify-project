import 'package:clothify/homepage.dart';
import 'package:flutter/material.dart';

class ContinueBtn extends StatelessWidget {
  const ContinueBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 100),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 22, 34, 48),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
            child: const Text(
              "Continue",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
