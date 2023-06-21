import 'package:clothify/homepage.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

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
                '           Prof',
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontSize: 30,
                ),
              ),
              Text(
                'ile',
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
                //profile pic
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/barzaga.jpg'),
                  radius: 90,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Jastene Medrano',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),

                SizedBox(height: 50),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('medjastene@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Address'),
                  subtitle: Text('Zone 3, Baro, Asingan, Pangasinan'),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
