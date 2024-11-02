import 'package:flutter/material.dart';
import 'package:test03/page/dating_page/home_dating_page.dart';
import 'package:test03/page/dating_page/img_picker_dialog.dart';
import 'package:test03/page/dating_page/infor_dating_page.dart';
import 'package:test03/page/profile_page/profile_page.dart';
import 'package:test03/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfilePage();
  }
}
