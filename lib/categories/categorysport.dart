import 'package:clothify/components/producttile.dart';
import 'package:clothify/homepage.dart';
import 'package:clothify/sportspage/sportpagefour.dart';
import 'package:clothify/sportspage/sportpageone.dart';
import 'package:clothify/sportspage/sportpagethree.dart';
import 'package:clothify/sportspage/sportpagetwo.dart';
import 'package:flutter/material.dart';

class Sportscategory extends StatefulWidget {
  const Sportscategory({super.key});

  @override
  State<Sportscategory> createState() => _SportscategoryState();
}

class _SportscategoryState extends State<Sportscategory> {
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
                      'Sports',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'wear',
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
                                  builder: (context) => const Sportone()));
                        },
                        child: const Producttile(
                            imagePath: 'assets/images/sportsone.png')),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sporttwo()));
                      },
                      child: const Producttile(
                          imagePath: 'assets/images/sportstwo.png'),
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
                                  builder: (context) => const Sportthree()));
                        },
                        child: const Producttile(
                            imagePath: 'assets/images/sportsthree.png')),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sportfour()));
                      },
                      child: const Producttile(
                          imagePath: 'assets/images/sportsfour.png'),
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
