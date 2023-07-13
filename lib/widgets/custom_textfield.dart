import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLine = 1,
      this.onSaved,
      this.onChanged});

  final String hintText;
  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return '$hintText is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: KPrimaryColor),
          hintText: hintText,
          focusedBorder: textFieldBorder(KPrimaryColor),
          enabledBorder: textFieldBorder(),
          border: textFieldBorder()),
    );
  }

  OutlineInputBorder textFieldBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
