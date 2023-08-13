import 'package:flutter/material.dart';

class MyRouter {
  static void myPush({
    required BuildContext context,
    required Widget child,
  }) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => child,
    ));
  }

  static void myPushDeletaAll({
    required BuildContext context,
    required Widget child,
  }) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => child,
      ),
      (route) => false,
    );
  }
}
