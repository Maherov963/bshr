import 'package:flutter/material.dart';

class MyRouter {
  static void myPush({
    required BuildContext ctx,
    required Widget child,
  }) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (context) => child,
    ));
  }
}
