import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySuggestText extends StatelessWidget {
  String text;
  Color color;

  MySuggestText({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
           Icon(
            Icons.error,
            color: color,
          ),
          Text(
            "   $text",
            style:  TextStyle(
              color: color,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
