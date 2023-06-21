import 'package:clothify/components/producttile.dart';
import 'package:clothify/homepage.dart';
import 'package:clothify/hoodypage/hoodypagefour.dart';
import 'package:clothify/hoodypage/hoodypageone.dart';
import 'package:clothify/hoodypage/hoodypagethree.dart';
import 'package:clothify/hoodypage/hoodypagetwo.dart';
import 'package:flutter/material.dart';

class Hoodiecategory extends StatelessWidget {
  const Hoodiecategory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Homepage()));
            },
            icon: const BackButton(
              color: Colors.black,
            ),
          ),
          title: const Row(
            children: [
              Text(
                '           Cloth',
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontSize: 30,
                ),
              ),
              Text(
                'ify',
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
                      'Hood',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ie',
                      style: TextStyle(
                          color: Color.fromARGB(255, 94, 182, 31),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hoodpageone()));
                        },
                        child: const Producttile(
                            imagePath: 'assets/images/hoodyone.png')),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Hoodpagetwo()));
                      },
                      child: const Producttile(
                          imagePath: 'assets/images/hoodytwo.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hoodpagethree()));
                        },
                        child: const Producttile(
                            imagePath: 'assets/images/hoodythree.png')),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Hoodpagefour()));
                      },
                      child: const Producttile(
                          imagePath: 'assets/images/hoodyfour.png'),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
