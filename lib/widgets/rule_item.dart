import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RuleItem extends StatelessWidget {
  final String title;
  final String description;
  final String? linkText;

  RuleItem({required this.title, required this.description, this.linkText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 15, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check, color: Color(0xffDA2126)),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: description,
                    style: const TextStyle(color: Colors.grey),
                    children: linkText != null
                        ? [
                            TextSpan(
                              text: " $linkText",
                              style: const TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline),
                              // Thêm hành động khi nhấn vào link
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Xử lý sự kiện khi nhấn vào link
                                },
                            ),
                          ]
                        : [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
