import 'package:clothify/components/carttile.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const BackButton(
              color: Colors.black,
            ),
          ),
          title: const Row(
            children: [
              Text(
                '           Ca',
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontSize: 30,
                ),
              ),
              Text(
                'rt',
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Joseph track technicala jersey',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text('\t\t\t\torem ipsum dolor sit amet,'),
                        Text('\t\t\t\tconsectetur adipiscing elit,'),
                        Text('\t\t\t\tsed do eiusmod tempor '),
                        Text('\t\t\t\tincididunt ut labore et'),
                        Text('\t\t\t\tdolore magna aliqua.'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Carttile(imagePath: 'assets/images/secondcartpic.png'),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '6 pocket cargo pants',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text('\t\t\t\torem ipsum dolor sit amet,'),
                        Text('\t\t\t\tconsectetur adipiscing elit,'),
                        Text('\t\t\t\tsed do eiusmod tempor '),
                        Text('\t\t\t\tincididunt ut labore et'),
                        Text('\t\t\t\tdolore magna aliqua.'),
                        SizedBox(height: 10),
                      ],
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
