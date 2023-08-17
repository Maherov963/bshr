import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      child: ListTile(
        title: Text("Maherov"),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
        ),
        subtitle: Text("nice photo my brother "),
      ),
    );
  }
}
