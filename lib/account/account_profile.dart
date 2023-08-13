import 'package:alkhalil/comment/post_card.dart';
import 'package:flutter/material.dart';

class GroupProfile extends StatefulWidget {
  const GroupProfile({super.key});

  @override
  State<GroupProfile> createState() => _GroupProfileState();
}

class _GroupProfileState extends State<GroupProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    const BackButton(),
                    Expanded(
                      child: ListTile(
                        title: const Text("Group name"),
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 50,
                        ),
                        subtitle: ElevatedButton(
                            onPressed: () {}, child: Text("join")),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "this is group description this is group description this is group description this is group description this is group description"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => PostCard(id: index),
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
