import 'package:clothify/drawerpages/cartpage.dart';
import 'package:clothify/drawerpages/profilepage.dart';
import 'package:clothify/drawerpages/purchasehistopage.dart';
import 'package:clothify/login.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(color: Colors.black),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CLOTH',
                    style: TextStyle(
                        color: Color.fromARGB(255, 249, 249, 249),
                        fontSize: 25),
                  ),
                  Text(
                    'IFY',
                    style: TextStyle(
                        color: Color.fromARGB(255, 94, 182, 31), fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle, size: 30),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profilepage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart, size: 30),
            title: const Text(
              'Cart',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cartpage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.history, size: 30),
            title: const Text(
              'Purchase history',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Historypage()));
            },
          ),
          const Divider(thickness: 1),
          ListTile(
            leading: const Icon(Icons.exit_to_app, size: 30),
            title: const Text(
              'Log out',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
