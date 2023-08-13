import 'package:flutter/material.dart';
import 'mybar.dart' as mybar;

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: mybar.SearchAnchor.bar(
            barHintText: "Search in your friends",
            viewHintText: "Search in your friends",
            isFullScreen: false,
            suggestionsBuilder: (context, controller) => [],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: const Text("Maherov"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_remove_outlined,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
