import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          border: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
          hintText: hint,
          hintStyle: TextStyle(color: kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
