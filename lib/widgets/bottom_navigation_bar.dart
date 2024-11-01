import 'package:flutter/material.dart';
import 'package:test03/page/dating_page/welcome_dating_page.dart';
import 'package:test03/page/home_page/home_page.dart';

class BottomNavigationBarSB extends StatefulWidget {
  const BottomNavigationBarSB({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBarSBState createState() => _BottomNavigationBarSBState();
}

class _BottomNavigationBarSBState extends State<BottomNavigationBarSB> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    Foo("Profile Page"),
    Foo("Messages Page"),
    Foo("Notifications Page"),
    const DatingModePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: TabBar(
            // indicatorWeight:0.1,
            indicatorColor: Colors.transparent,
            onTap: onTabTapped,
            tabs: [
              SizedBox(
                width: 25,
                height: 25,
                child: ClipRRect(
                  child: Image.asset('assets/iconNavBar/home.png'),
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: ClipRRect(
                  child: Image.asset('assets/iconNavBar/bag.png'),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                  child: Image.asset('assets/iconNavBar/addition 1.png'),
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: ClipRRect(
                  child: Image.asset('assets/iconNavBar/mess.png'),
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: ClipRRect(
                  child: Image.asset('assets/iconNavBar/menu 1.png'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}

class Foo extends StatelessWidget {
  final String text;
  Foo(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text, style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
