import 'package:alkhalil/app/components/post_card.dart';
import 'package:alkhalil/app/widgets/my_button.dart';
import 'package:flutter/material.dart';

class AccountProfilePage extends StatefulWidget {
  const AccountProfilePage({super.key});

  @override
  State<AccountProfilePage> createState() => _AccountProfilePageState();
}

class _AccountProfilePageState extends State<AccountProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      const BackButton(),
                      Expanded(
                        child: ListTile(
                          title: const Text("sezar noob"),
                          leading: const CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 50,
                          ),
                          subtitle: MyButton(
                            text: "Friends",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "this is profile bio this is profile bio this is profile bio this is profile bio this is profile bio this is profile bio this is profile bio "),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => PostCard(id: index),
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
