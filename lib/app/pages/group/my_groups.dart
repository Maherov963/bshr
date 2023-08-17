import 'package:alkhalil/app/pages/group/create_group.dart';
import 'package:alkhalil/app/pages/group/group_profile.dart';
import 'package:alkhalil/app/router/router.dart';
import 'package:flutter/material.dart';

class MyGroupPage extends StatelessWidget {
  const MyGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          MyRouter.myPush(context: context, child: const CreateGroupPage());
        },
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text("group name"),
          onTap: () {
            MyRouter.myPush(context: context, child: const GroupProfile());
          },
          leading: const CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message,
                  color: Colors.green,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout_outlined,
                  color: Colors.red,
                ),
              ),
            ],
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
