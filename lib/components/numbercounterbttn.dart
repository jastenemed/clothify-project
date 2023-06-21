import 'package:flutter/material.dart';

void main() {
  runApp(Numbercounter());
}

// ignore: must_be_immutable
class Numbercounter extends StatefulWidget {
  int counter = 0;

  Numbercounter({super.key});

  @override
  State<Numbercounter> createState() => _NumbercounterState();
}

class _NumbercounterState extends State<Numbercounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 213, 218, 213),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () => setState(() {
                    // ignore: avoid_print
                    widget.counter == 0
                        // ignore: avoid_print
                        ? print('counter at 0')
                        : widget.counter--;
                  }),
              child: const Icon(Icons.remove)),
          Text('${widget.counter}'),
          GestureDetector(
              onTap: () {
                setState(() {
                  widget.counter++;
                });
              },
              child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
