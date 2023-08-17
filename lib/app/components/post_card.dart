import 'package:alkhalil/app/pages/account/account_profile.dart';
import 'package:alkhalil/app/pages/image_viewer/image_view_page.dart';
import 'package:alkhalil/app/pages/notification/notifications_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../router/router.dart';
import '../pages/comment/comment_page.dart';

class PostCard extends StatelessWidget {
  final int id;
  final bool isCommentPage;
  final bool isIos;
  const PostCard({
    super.key,
    required this.id,
    this.isCommentPage = false,
    this.isIos = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isIos ? CupertinoTheme.of(context).barBackgroundColor : null,
      child: Column(
        children: [
          isIos
              ? CupertinoListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  title: getButton(
                    text: "Maherov",
                    color: null,
                    onTap: () {
                      MyRouter.myPush(
                          context: context, child: const AccountProfilePage());
                    },
                  ),
                  subtitle: const Text(
                    "2002/25/35s",
                  ),
                )
              : ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  title: getButton(
                    text: "Maherov",
                    color: null,
                    onTap: () {
                      MyRouter.myPush(
                          context: context, child: const AccountProfilePage());
                    },
                  ),
                  subtitle: const Text("2002/25/35s"),
                ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "this is post text poatato is good hehe holy moly freeking is doly",
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
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
                      link: "assets/gg.jpg",
                    ),
                  );
                },
                child: Image.asset(
                  "assets/gg.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          if (!isCommentPage)
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
                        return const Icon(
                          Icons.thumb_up_alt,
                          color: Colors.grey,
                        );
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
