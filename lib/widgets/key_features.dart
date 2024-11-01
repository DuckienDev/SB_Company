// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyKeyFeatures extends StatelessWidget {
  String text;
  MyKeyFeatures({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.expand_circle_down,
          color: Colors.green,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff7D8480),
          ),
        ),
      ],
    );
  }
}
