import 'package:flutter/material.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text("abo haidara"),
          subtitle: const Text("bro where the hell are you"),
          onTap: () {},
          leading: const CircleAvatar(
            // backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509_640.jpg"),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 5,
        ),
        itemCount: 12,
      ),
    );
  }
}
