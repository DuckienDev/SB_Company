import 'package:flutter/material.dart';
import 'package:test03/page/sign_page/sign_in_page.dart';
import 'package:test03/widgets/my_button.dart';
import 'package:test03/widgets/suggest_text_sb.dart';
import 'package:test03/widgets/textfield_sb.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _stateInput = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _OccupationController = TextEditingController();
  final TextEditingController _UserNameController = TextEditingController();
  final TextEditingController _CountryController = TextEditingController();

  _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      //Sign Up
    } else {
      setState(() {
        _stateInput = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo02.png'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20),
              //User Name
              MyTextField(
                controller: _UserNameController,
                hintText: 'Public username',
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),

              MySuggestText(
                text: _stateInput
                    ? "You can't change your username, so choose wisely"
                    : "This account name has already been registered.",
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              //Country
              MyTextField(
                controller: _CountryController,
                hintText: 'Country',
                readOnly: true,
                showCountryDialog: _showCountryDialog,
                  color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              _stateInput
                  ? const SizedBox(height: 1)
                  : MySuggestText(
                      text: 'Inappropriate occupation',
                      color: Colors.red,
                    ),
              //Occupation
              MyTextField(
                controller: _OccupationController,
                hintText: 'Enter Occupation',
                  color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              MySuggestText(
                text: _stateInput
                    ? "You'll see why soon. You can change it later"
                    : 'Inappropriate occupation.',
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              //Email
              MyTextField(
                controller: _emailController,
                hintText: 'Enter Email',
                  color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              _stateInput
                  ? const SizedBox(height: 1)
                  : MySuggestText(
                      text: 'This email has been registered',
                      color: Colors.red,
                    ),
              //Pw
              MyTextField(
                controller: _pwController,
                hintText: 'Password',
                obscureText: true,
                  color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              _stateInput
                  ? const SizedBox(height: 1)
                  : MySuggestText(
                      text: "This password is invalid",
                      color: Colors.red,
                    ),

              MySuggestText(
                text: "Min 8 characters, 1 uppercase, 1 lowercase, 1 number",
                color: const Color(0xff94A3B8),
              ),
              const SizedBox(height: 20),
              //Button Sign Up
              MyButton(
                onTap: _validateAndSubmit,
                text: 'Sign up',
                color: const Color(0xffDA2126),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already a member?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xffDA2126),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(fontSize: 13, color: Colors.black),
                    children: [
                      const TextSpan(
                          text: "By joining, you agree to the StrongBody "),
                      WidgetSpan(
                        child: InkWell(
                          onTap: () {
                            print("Terms of Service tapped");
                          },
                          child: const Text(
                            "Terms of Service",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const TextSpan(
                          text:
                              " and to occasionally receive emails from us. Please read our "),
                      WidgetSpan(
                        child: InkWell(
                          onTap: () {
                            print("Privacy policy tapped");
                          },
                          child: const Text(
                            "Privacy policy",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const TextSpan(
                          text: " to learn how we use your personal data."),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//Show selected country
  void _showCountryDialog() {
    final List<String> countries = [
      'Vietnam',
      'USA',
      'Japan',
      'Germany',
      'Chinna',
    ];

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: countries.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/vn.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(countries[index]),
                      onTap: () {
                        _CountryController.text = countries[index];
                        Navigator.pop(context);
                      },
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
