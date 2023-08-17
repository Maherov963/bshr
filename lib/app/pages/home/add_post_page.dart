import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Post"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyButton(
              text: "Post",
              color: Colors.blue,
              fontColor: Colors.white,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              minLines: 6,
              maxLines: 6,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: "what's in your mind?"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(100),
                child: Text("add photo"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
