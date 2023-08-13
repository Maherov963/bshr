import 'package:flutter/material.dart';
import 'home.dart';

class RobotChat extends StatefulWidget {
  const RobotChat({super.key});

  @override
  State<RobotChat> createState() => _RobotChatState();
}

class _RobotChatState extends State<RobotChat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      theme: ThemeData.light(useMaterial3: true),
      home: const HomeBshr(),
    );
  }
}
