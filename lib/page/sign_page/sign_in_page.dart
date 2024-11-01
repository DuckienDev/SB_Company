import 'package:flutter/material.dart';
import 'package:test03/page/sign_page/forgot_pw_page.dart';
import 'package:test03/page/sign_page/sign_up_page.dart';
import 'package:test03/widgets/my_button.dart';
import 'package:test03/widgets/textfield_sb.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign in',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          //Email
          MyTextField(
            controller: _emailController,
            hintText: 'Enter Email',
              color: const Color(0xff94A3B8) ,
          ),
          //Password
          MyTextField(
            controller: _pwController,
            hintText: 'Password',
            obscureText: true,
              color: Color(0xff94A3B8),
          ),
          //Check box fw
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: isChecked,
                activeColor: Colors.black,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              const Text("Remember me"),
            ],
          ),

          //Button Sign in
          MyButton(
            text: 'Sign in',
            color: const Color(0xffDA2126), onTap: () {  },
          ),

          //Forgot Pw
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FgPassPage()));
            },
            child: const Text(
              'Forgot Password ?',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Not a member yet?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
