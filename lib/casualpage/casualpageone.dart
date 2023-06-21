import 'package:clothify/casualpage/Casualcheckone.dart';
import 'package:clothify/categories/categorycasual.dart';
import 'package:clothify/components/buynowbttn.dart';
import 'package:clothify/components/producttile.dart';
import 'package:flutter/material.dart';

class Casualone extends StatelessWidget {
  const Casualone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Casualcategory()));
            },
            icon: const BackButton(
              color: Colors.black,
            ),
          ),
          title: const Row(
            children: [
              Text(
                '           Deta',
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontSize: 30,
                ),
              ),
              Text(
                'ils',
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
                      'Stand-up collar plain t-shirt',
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
                const Producttile(imagePath: 'assets/images/onecasual.png'),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\t\t\tStock: 146',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            '\t\t\t\torem ipsum dolor sit amet, consectetur adipiscing \n\t\t\t\telit, sed do eiusmod tempor incididunt ut labore et \n\t\t\t\tdolore magna aliqua. Ut enim ad minim veniam,\n\t\t\t\t quis nostrud exercitation ullamco laboris nisi\n\t\t\t\t ut aliquip ex ea commodo consequat.'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 90),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cascheckone()));
                    },
                    child: const Buybttn()),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
