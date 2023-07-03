import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLine = 1});

  final String hintText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is empty';
        }
      },
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: KPrimaryColor),
          hintText: hintText,
          focusedBorder: textFieldBorder(KPrimaryColor),
          enabledBorder: textFieldBorder()),
    );
  }

  OutlineInputBorder textFieldBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
