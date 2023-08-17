import 'package:alkhalil/app/pages/home/search_page.dart';
import 'package:alkhalil/app/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/post_card.dart';
import 'add_post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () {
                MyRouter.myPush(context: context, child: const AddPostPage());
              },
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: const Text("Maherov"),
              subtitle: const Text("what the fuck are you thinking for?"),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => PostCard(id: index),
            separatorBuilder: (context, index) => const SizedBox(
              height: 5,
            ),
            itemCount: 20,
          ),
        ],
      ),
    );
  }
}

class HomePageIos extends StatefulWidget {
  const HomePageIos({super.key});

  @override
  State<HomePageIos> createState() => _HomePageIosState();
}

class _HomePageIosState extends State<HomePageIos> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: Material(
          color: Colors.transparent,
          type: MaterialType.circle,
          child: IconButton(
            splashRadius: 20,
            onPressed: () {
              MyRouter.myPush(
                context: context,
                child: const Searchpage(),
              );
            },
            icon: const Icon(CupertinoIcons.search),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Robot Chat",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: IconTheme.of(context).color,
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: CupertinoTheme.of(context).barBackgroundColor,
                child: CupertinoListTile(
                  onTap: () {
                    MyRouter.myPush(
                        context: context, child: const AddPostPage());
                  },
                  leading: const CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  title: const Text("Maherov"),
                  subtitle: const Text("what the fuck are you thinking for?"),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => PostCard(
                  id: index,
                  isIos: true,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
