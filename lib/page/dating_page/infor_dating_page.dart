import 'package:flutter/material.dart';
import 'package:test03/page/dating_page/img_picker_dialog.dart';
import 'package:test03/widgets/my_button.dart';

class InforDatingPage extends StatelessWidget {
  const InforDatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/logo02.png', width: 80),
            const Row(
              children: [
                Text(
                  'Dating',
                  style: TextStyle(
                      color: Color(0xffDA2126), fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xffDA2126),
                  size: 30,
                ),
                SizedBox(width: 30)
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.notifications,
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'About you',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              buildTextField("Display Name", "Name"),
              buildTextField("Age", "Age"),
              buildTextField("Your Occupation", "Your occupation"),
              buildTextField("Short Bio", "Your Bio", maxLines: 4),
              const SizedBox(height: 24),
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Add your photos',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Add at least 2 photos, you can change this later',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  3,
                  (index) => InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            insetPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 80),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: const ImagePickerDialog(),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Icon(Icons.add, color: Color(0xffDA2126)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              //button continue
              MyButton(
                  onTap: () {
                    
                  },
                  text: 'Continue',
                  color: const Color(0xffDA2126)),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, String hint, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          TextField(
            style: const TextStyle(fontSize: 13),
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusColor: Colors.black,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
