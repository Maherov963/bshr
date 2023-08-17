import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    required this.hint,
    required this.controller,
    this.enabled = true,
    this.pre,
    this.suf,
  });
  final Widget? pre;
  final Widget? suf;
  final bool enabled;
  final String hint;
  final TextEditingController controller;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      decoration: InputDecoration(
        suffixIcon: widget.suf,
        prefixIcon: widget.pre,
        labelText: widget.hint,
        isDense: true,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
