import 'package:alkhalil/image_view_page.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../router.dart';
import 'comment_page.dart';

class PostCard extends StatelessWidget {
  final int id;
  const PostCard({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Text("Maherov"),
            subtitle: Text("2002/25/35s"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                "this is post text poatato is good hehe holy moly freeking is doly"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: () {
                  MyRouter.myPush(
                    context: context,
                    child: ImageViewer(
                      tag: id,
                      name: "",
                    ),
                  );
                },
                child: Hero(
                  tag: id,
                  child: Image.asset(
                    "assets/gg.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: LikeButton(
                  likeCount: 45,
                  likeBuilder: (isLiked) {
                    if (isLiked) {
                      return const Icon(
                        Icons.thumb_up_alt,
                        color: Colors.blue,
                      );
                    } else {
                      return const Icon(Icons.thumb_up_alt);
                    }
                  },
                ),
              ),
              Expanded(
                child: LikeButton(
                  likeCount: 45,
                  onTap: (isLiked) async {
                    MyRouter.myPush(
                        context: context, child: const CommentPage());
                    return false;
                  },
                  likeBuilder: (isLiked) {
                    return const Icon(Icons.chat);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
