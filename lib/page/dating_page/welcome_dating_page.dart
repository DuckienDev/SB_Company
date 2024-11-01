import 'package:flutter/material.dart';
import 'package:test03/page/dating_page/infor_dating_page.dart';
import 'package:test03/widgets/my_button.dart';
import 'package:test03/widgets/rule_item.dart';

class DatingModePage extends StatelessWidget {
  const DatingModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/logo02.png'),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffDA2126),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const SizedBox(height: 50),
                  // Title
                  const Text(
                    'Welcome Dating Mode',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  // Subtitle
                  const Text(
                    'Please follow these House Rules.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  // House Rules
                  RuleItem(
                    title: 'Be Yourself.',
                    description:
                        'Make sure your photos, age, and bio are true to who you are.',
                  ),
                  RuleItem(
                    title: 'Stay Safe.',
                    description:
                        "Don't be too quick to give out personal information. Date Safely",
                    linkText: "Date Safely",
                  ),
                  RuleItem(
                    title: 'Play It Cool',
                    description:
                        "Respect others and treat them as you would like to be treated.",
                  ),
                  RuleItem(
                    title: 'Be Proactive.',
                    description: "Always report bad behavior.",
                  ),
                ],
              ),
              const SizedBox(height: 100),
              // Agree Button
              MyButton(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InforDatingPage()));
                },
                text: 'I Agree',
                color: const Color(0xffDA2126),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
