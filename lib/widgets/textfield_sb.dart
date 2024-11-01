// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  bool obscureText;
  bool readOnly;
  Color color;
  int maxLines;
  void Function()? showCountryDialog;
  MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.readOnly = false,
    this.maxLines = 1,
    required this.color,
    this.showCountryDialog,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF1F2F4),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: color),
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: TextFormField(
              obscureText: obscureText,
              maxLines: maxLines,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '';
                }
                return null;
              },
              controller: controller,
              readOnly: readOnly,
              onTap: readOnly ? () => showCountryDialog!() : null,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffF1F2F4)),
                  borderRadius: BorderRadius.circular(8),
                ),
                // focusedErrorBorder: OutlineInputBorder(
                //   borderSide: const BorderSide(color: Colors.red),
                //   borderRadius: BorderRadius.circular(12),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: const BorderSide(color: Colors.black),
                //   borderRadius: BorderRadius.circular(12),
                // ),
                border: InputBorder.none,
                hintText: hintText,
              ),
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
