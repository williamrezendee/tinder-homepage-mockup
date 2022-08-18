import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tinder_homepage_mockup/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFEE7362),
                  Color(0xFFE94976),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Image.asset('assets/images/tinder_logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(26),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: const [
                      Text(
                        'By tapping Create Account or Sign In, you agree to our',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Terms. Learn how we process your data in our Privacy',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        ' Policy and Cookies Policy',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const CustomButton(
                  label: 'SIGN IN WITH APPLE',
                  icon: Icon(Icons.apple),
                ),
                const CustomButton(
                  label: 'SIGN IN WITH FACEBOOK',
                  icon: Icon(Icons.facebook),
                ),
                const CustomButton(
                  label: 'SIGN IN WITH PHNE NUMBER',
                  icon: Icon(Icons.chat_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Trouble Signing In?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
