import 'package:alkhalil/app/components/post_card.dart';
import 'package:alkhalil/app/pages/account/create_profile.dart';
import 'package:alkhalil/app/router/router.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: SafeArea(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Maherov"),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 50,
                    ),
                    subtitle: MyButton(
                      onPressed: () {
                        MyRouter.myPush(
                          context: context,
                          child: const CreateProfilePage(),
                        );
                      },
                      color: Colors.blue,
                      fontColor: Colors.white,
                      text: "Edit profile",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "this is profile bio this is profile bio this is profile bio  this is profile bio  this is profile bio "),
                  ),
                ],
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => PostCard(id: index),
            separatorBuilder: (context, index) => const SizedBox(
              height: 5,
            ),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
