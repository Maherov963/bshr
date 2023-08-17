import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home/home.dart';

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
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: const HomeBshr(),
    );
  }
}

class RobotChatIos extends StatefulWidget {
  const RobotChatIos({super.key});

  @override
  State<RobotChatIos> createState() => _RobotChatIosState();
}

class _RobotChatIosState extends State<RobotChatIos> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        applyThemeToAll: true,
      ),
      home: HomeBshrIos(),
    );
  }
}
