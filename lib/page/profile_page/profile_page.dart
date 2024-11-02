import 'package:flutter/material.dart';
import 'package:test03/widgets/my_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //cover photo
            Image.asset(
              'assets/profile/BG.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const Row(
              children: [
                //avata photo
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      'assets/profile/Group 722.png',
                    ),
                  ),
                ),
                //infomation user
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Dr. Laura Nguyen',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Designer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 290,
                      child: Text(
                        'Create professional quality social media posts, invitations, digital postcards.',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_pin, color: Colors.red),
                        Text('Ha Noi'),
                        SizedBox(width: 10),
                        Icon(Icons.chat_bubble_outline, color: Colors.blue),
                        Text(' English, Viet Nam'),
                      ],
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 10),
            // Button "Contact me"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: MyButton(
                onTap: () {},
                text: 'Contact me',
                color: const Color(0xffDB1F26),
              ),
            ),
            const SizedBox(height: 20),
            // List Tab
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color(0xffDB1F26),
                    tabs: [
                      Tab(text: 'Posts'),
                      Tab(text: 'My services'),
                      Tab(text: 'StrongBody Shop'),
                      Tab(text: 'Reviews'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //"Not Post Yet"
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Image.asset('assets/profile/strongbody-061.png'),
                      const Text(
                        'Not Post Yet',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Try subscribing to a new post of yours...',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 120,
                        child: MyButton(
                            onTap: () {},
                            text: 'New Post',
                            color: const Color(0xffDB1F26)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Nút thêm bài viết
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.edit,
          color: Colors.white,
          size: 30,
        ),
          shape: const CircleBorder(), 
      ),
    );
  }
}
