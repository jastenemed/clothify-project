import 'package:flutter/material.dart';

class Paymentbttn extends StatefulWidget {
  const Paymentbttn({super.key});

  @override
  State<Paymentbttn> createState() => _PaymentbttnState();
}

class _PaymentbttnState extends State<Paymentbttn> {
  List<String> items = [
    'Paypal',
    'Gcash',
    'Maya',
    'Credit card',
  ];
  String? selectedItem = 'Paypal';

  @override
  // ignore: avoid_unnecessary_containers
  Widget build(BuildContext context) => Container(
        child: Center(
          child: SizedBox(
            width: 290,
            height: 54,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 195, 199, 195),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 195, 199, 195)))),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item, style: const TextStyle(fontSize: 16)),
                      ))
                  .toList(),
              onChanged: (item) => setState(() => selectedItem = item),
            ),
          ),
        ),
      );
}
