import 'package:alkhalil/home.dart';
import 'package:flutter/material.dart';

class RobotChat extends StatefulWidget {
  const RobotChat({super.key});

  @override
  State<RobotChat> createState() => _RobotChatState();
}

class _RobotChatState extends State<RobotChat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.light(useMaterial3: true),
      home: const HomeBshr(),
    );
  }
}
