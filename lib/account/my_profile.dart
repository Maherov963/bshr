import 'package:alkhalil/comment/post_card.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: SafeArea(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Group name"),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 50,
                    ),
                    subtitle: ElevatedButton(
                        onPressed: () {}, child: Text("Edit profile")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "this is group description this is group description this is group description this is group description this is group description"),
                  ),
                ],
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => PostCard(id: index),
            separatorBuilder: (context, index) => const SizedBox(
              height: 5,
            ),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
