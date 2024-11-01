import 'package:flutter/material.dart';
import 'package:test03/page/sign_page/sign_up_page.dart';
import 'package:test03/widgets/my_button.dart';
import 'package:test03/widgets/textfield_sb.dart';

class FgPassPage extends StatefulWidget {
  const FgPassPage({super.key});

  @override
  State<FgPassPage> createState() => _FgPassPageState();
}

class _FgPassPageState extends State<FgPassPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot password',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          MyTextField(
            controller: _emailController,
            hintText: 'Enter Email',
            obscureText: false, color: const Color(0xff94A3B8),
          ),
          MyButton(
            text: 'Continue',
            color: const Color(0xffDA2126), onTap: () {  },
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
