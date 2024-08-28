import 'package:daily_tasks/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hinttext;
  final TextInputType textInputType;
  const TextFieldInput(
      {super.key,
      required this.textEditingController,
      this.isPass = false,
      required this.hinttext,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hinttext,
          hintStyle: const TextStyle(color: third),
          fillColor: forth,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 8)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
