import 'package:clothify/components/cartnametile.dart';
import 'package:clothify/components/carttile.dart';
import 'package:clothify/homepage.dart';
import 'package:flutter/material.dart';

class Historypage extends StatelessWidget {
  const Historypage({super.key});

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
                '  Purchase',
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontSize: 30,
                ),
              ),
              Text(
                ' history',
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
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Carttile(imagePath: 'assets/images/firstcartpic.png'),
                    SizedBox(width: 10),
                    Nametile(
                      imagePath: 'assets/images/firstpurname.png',
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Carttile(imagePath: 'assets/images/secondcartpic.png'),
                    SizedBox(width: 10),
                    Nametile(
                      imagePath: 'assets/images/secondpurname.png',
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Carttile(imagePath: 'assets/images/thirdpic.png'),
                    SizedBox(width: 10),
                    Nametile(
                      imagePath: 'assets/images/thirdpurname.png',
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
