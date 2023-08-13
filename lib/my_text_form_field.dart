import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField(
      {super.key, required this.hint, required this.controller});
  final String hint;
  final TextEditingController controller;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hint,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
