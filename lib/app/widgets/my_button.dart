import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.color,
      this.fontColor});
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: 18, color: fontColor)),
    );
  }
}
