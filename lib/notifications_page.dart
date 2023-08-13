import 'package:flutter/material.dart';
import 'animated_button.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Expanded(
        child: ListView(
          children: [
            ListTile(
              title: const Text("adel send a friend request"),
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getButton(text: "Accept", color: Colors.green),
                  getButton(text: "Cancel", color: Colors.red),
                ],
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text("You have been accepted in gamaing group"),
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text("adel ask You to join gamaing group"),
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getButton(text: "Accept", color: Colors.green),
                  getButton(text: "Cancel", color: Colors.red),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text("gamaing group invite you to join thier group"),
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              trailing: getButton(text: "join", color: Colors.green),
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 4,
          itemBuilder: (context, index) => ListTile(
            title: const Text("adel send a friend request"),
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getButton(text: "Accept", color: Colors.green),
                getButton(text: "Cancel", color: Colors.red),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 4,
          itemBuilder: (context, index) => ListTile(
            title: const Text("adel ask You to join gamaing group"),
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getButton(text: "Accept", color: Colors.green),
                getButton(text: "Cancel", color: Colors.red),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 4,
          itemBuilder: (context, index) => ListTile(
            title: const Text("gamaing group invite you to join thier group"),
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            trailing: getButton(text: "join", color: Colors.green),
          ),
        ),
      ),
      Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 4,
          itemBuilder: (context, index) => const ListTile(
            title: Text("You have been accepted in gamaing group"),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              AnimatedButton(
                isPressed: _index == 0,
                text: "All",
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                },
              ),
              AnimatedButton(
                isPressed: _index == 1,
                text: "Friend",
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                },
              ),
              AnimatedButton(
                isPressed: _index == 2,
                text: "Group",
                onTap: () {
                  setState(() {
                    _index = 2;
                  });
                },
              ),
              Expanded(
                child: AnimatedButton(
                  isPressed: _index == 3,
                  text: "Invetation",
                  onTap: () {
                    setState(() {
                      _index = 3;
                    });
                  },
                ),
              ),
              Expanded(
                child: AnimatedButton(
                  isPressed: _index == 4,
                  text: "Answers",
                  onTap: () {
                    setState(() {
                      _index = 4;
                    });
                  },
                ),
              ),
            ],
          ),
          pages[_index]
        ],
      ),
    );
  }
}

getButton({
  void Function()? onTap,
  required String text,
  required Color color,
}) {
  return InkWell(
    overlayColor: MaterialStatePropertyAll(color.withOpacity(0.5)),
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 14,
        ),
      ),
    ),
  );
}
