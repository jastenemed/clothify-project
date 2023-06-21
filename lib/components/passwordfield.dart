import 'package:flutter/material.dart';

class MyTextFieldPassword extends StatefulWidget {
  const MyTextFieldPassword({super.key});

  @override
  State<MyTextFieldPassword> createState() => _MyTextFieldPasswordState();
}

class _MyTextFieldPasswordState extends State<MyTextFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.remove_red_eye),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 0, 0, 0),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 22, 34, 48),
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
