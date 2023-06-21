import 'package:clothify/components/producttile.dart';
import 'package:clothify/formalpage/formalpagefour.dart';
import 'package:clothify/formalpage/formalpageone.dart';
import 'package:clothify/formalpage/formalpagethree.dart';
import 'package:clothify/formalpage/formalpagetwo.dart';
import 'package:clothify/homepage.dart';
import 'package:flutter/material.dart';

class Formalcategory extends StatelessWidget {
  const Formalcategory({super.key});

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
                      'Form',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'al',
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
                                  builder: (context) => const Formalone()));
                        },
                        child: const Producttile(
                            imagePath: 'assets/images/formalone.png')),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Formaltwo()));
                      },
                      child: const Producttile(
                          imagePath: 'assets/images/formaltwo.png'),
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
                                  builder: (context) => const Formalthree()));
                        },
                        child: const Producttile(
                            imagePath: 'assets/images/formalthree.png')),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Formalfour()));
                      },
                      child: const Producttile(
                          imagePath: 'assets/images/formalfour.png'),
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
