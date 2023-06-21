import 'package:clothify/components/checkoutbttn.dart';
import 'package:clothify/components/numbercounterbttn.dart';
import 'package:clothify/components/paymentmethod.dart';
import 'package:clothify/components/producttile.dart';
import 'package:clothify/hoodypage/hoodypagethree.dart';
import 'package:clothify/lastcheckout.dart';
import 'package:flutter/material.dart';

class Hoodcheckthree extends StatelessWidget {
  const Hoodcheckthree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Hoodpagethree()));
            },
            icon: const BackButton(
              color: Colors.black,
            ),
          ),
          title: const Row(
            children: [
              Text(
                '         Check',
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontSize: 30,
                ),
              ),
              Text(
                'out',
                style: TextStyle(
                  color: Color.fromARGB(255, 94, 182, 31),
                  fontSize: 30,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Black paisley bandana printed hoodie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Producttile(imagePath: 'assets/images/threehood.png'),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\t\t\tPrice: 800',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Quantity',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Numbercounter(),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Payment method',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const Paymentbttn(),
                const SizedBox(height: 50),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Lastcheckout()));
                    },
                    child: const Checkoutbttn()),
              ],
            ),
          )),
        ),
      ),
    );
  }
}