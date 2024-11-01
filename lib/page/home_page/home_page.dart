import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/logo02.png', width: 80), // Thêm logo multi.me
            const SizedBox(width: 8),
            const Text(
              'StrongBody',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.red,
              size: 30,
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.language,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Danh mục dịch vụ
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryChip('All', true),
                  _buildCategoryChip('Childcare', false),
                  _buildCategoryChip('Momcare', false),
                  _buildCategoryChip('Psychcare', false),
                  _buildCategoryChip('Fitcare', false),
                ],
              ),
            ),
            // Ảnh chuyên gia
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  children: [
                    Image.asset('assets/fake01.png'),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Explore advice from all the top experts, customized for you.',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Recently Suggest Services',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {}, child: const Text('View All')),
                ],
              ),
            ),
            // Card dịch vụ được đề xuất
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  children: [
                    Image.asset('assets/fake01.png'), 
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I will be your diet manager to ensure proper nutrition for each meal',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text('Medipro'),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.orange, size: 16),
                              Text('4.8/5 (31 rates)'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text('From US\$200',
                              style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.red, size: 32), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (bool selected) {},
        selectedColor: Colors.black,
        labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
