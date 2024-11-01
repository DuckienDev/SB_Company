import 'package:flutter/material.dart';

class ImagePickerDialog extends StatelessWidget {
  const ImagePickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // AppBar với nút "Cancel"
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 10.0,
            right: 10,
          ),
          child: Divider(),
        ),
        ListTile(
          leading: const Icon(Icons.camera_alt, color: Colors.grey),
          title: const Text('Camera'),
          onTap: () {
            // Implement camera functionality
          },
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 10.0,
            right: 10,
          ),
          child: Divider(),
        ),
        ListTile(
          leading: const Icon(Icons.photo, color: Colors.grey),
          title: const Text('Gallery'),
          onTap: () {
            // Implement gallery functionality
          },
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
          child: Divider(),
        ),
      ],
    );
  }
}
