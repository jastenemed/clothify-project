import 'package:clothify/components/registerbttn.dart';
import 'package:clothify/login.dart';
import 'package:flutter/material.dart';
import 'package:clothify/components/passwordfield.dart';
import 'package:clothify/components/squaretile.dart';
import 'package:clothify/components/textfield.dart';

class LogandRegister extends StatelessWidget {
  const LogandRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cloth',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('ify',
                      style: TextStyle(
                          color: Color.fromARGB(255, 94, 182, 31),
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Column(
                children: [
                  Text(
                    'choose your style',
                    style: TextStyle(
                      color: Color.fromARGB(255, 149, 148, 148),
                      fontSize: 20,
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 100,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // user Text field
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Username field
                  Text(
                    'Username or Email',
                    style: TextStyle(
                      color: Color.fromARGB(255, 22, 34, 48),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Mytextfield(),

              const SizedBox(
                height: 20,
              ),
              //Address field
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Username field
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Color.fromARGB(255, 22, 34, 48),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Mytextfield(),

              const SizedBox(
                height: 20,
              ),
              // pasword field
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Color.fromARGB(255, 22, 34, 48),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const MyTextFieldPassword(),
              const SizedBox(
                height: 20,
              ),
              //confirm password
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                      color: Color.fromARGB(255, 22, 34, 48),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const MyTextFieldPassword(),
              const SizedBox(
                height: 20,
              ),
              //Continue Button
              const Registerbttn(),

              const SizedBox(
                height: 35,
              ),

              // Divider Or sign up
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 22, 34, 48),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or',
                        style:
                            TextStyle(color: Color.fromARGB(255, 22, 34, 48)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 22, 34, 48),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              // facebook + Apple + Google sign up buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // facebook
                  SquareTile(imagePath: 'assets/images/facebook.png'),
                  SizedBox(
                    width: 15,
                  ),
                  // apple
                  SquareTile(imagePath: 'assets/images/apple.png'),
                  SizedBox(
                    width: 15,
                  ),
                  // google
                  SquareTile(imagePath: 'assets/images/google.png')
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // dont have an account button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text('Log in',
                        style: TextStyle(
                            color: Color.fromARGB(255, 94, 182, 31),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
