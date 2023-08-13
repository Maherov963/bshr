import 'package:alkhalil/comment/comment_card.dart';
import 'package:alkhalil/comment/post_card.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
      ),
      body: ListView(
        children: [
          PostCard(
            id: 0,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CommentCard(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 5,
                  ),
              itemCount: 20),
        ],
      ),
    );
  }
}
