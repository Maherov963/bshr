import 'package:alkhalil/group/group_profile.dart';
import 'package:alkhalil/router.dart';
import 'package:flutter/material.dart';

class MyGroupPage extends StatelessWidget {
  const MyGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: const Text("group name"),
                onTap: () {
                  MyRouter.myPush(
                      context: context, child: const GroupProfile());
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
          itemCount: 12),
    );
  }
}
