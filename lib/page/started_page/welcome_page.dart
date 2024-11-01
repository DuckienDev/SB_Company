import 'package:flutter/material.dart';
import 'package:test03/page/sign_page/sign_in_page.dart';
import 'package:test03/page/sign_page/sign_up_page.dart';
import 'package:test03/widgets/my_button.dart';
import 'package:test03/widgets/key_features.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            // Logo
            Image.asset('assets/logo01.jpg'),

            const SizedBox(height: 50),

            // Text
            const Column(
              children: [
                Text(
                  'One App for All Your Connections',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Choose your own avatar as a regular user, buyer, seller, date, business partner, observer, or friend.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Key Features
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Key Features:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7D8480),
                    ),
                  ),
                  const SizedBox(height: 10),
                  MyKeyFeatures(text: 'Social Networking'),
                  MyKeyFeatures(text: 'Reconnect (Friends & Clients)'),
                  MyKeyFeatures(text: 'Business Matching'),
                  MyKeyFeatures(text: 'Dating'),
                  MyKeyFeatures(text: 'Private Posts & Comments'),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // End Section
            Column(
              children: [
                const Text(
                  'Powered by StrongBody Technology',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                MyButton(
                  text: 'Start Connecting',
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                ),

                // Sign Up Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a member?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
