import 'package:alkhalil/app/components/comment_card.dart';
import 'package:alkhalil/app/components/post_card.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final TextEditingController _controller = TextEditingController();
  bool isEmpty = true;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        if (_controller.text.trim().isEmpty) {
          isEmpty = true;
        } else {
          isEmpty = false;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const PostCard(
                  id: 0,
                  isCommentPage: true,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const CommentCard(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 5,
                  ),
                  itemCount: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      fillColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      filled: true,
                      hintText: "write your comment here ...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: isEmpty ? null : () {},
                    icon: Icon(
                      Icons.send,
                      color: isEmpty ? null : Colors.blue,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
