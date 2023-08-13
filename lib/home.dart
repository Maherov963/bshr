import 'package:alkhalil/comment/post_card.dart';
import 'package:alkhalil/search_page.dart';
import 'package:flutter/material.dart';
import 'account/my_profile.dart';
import 'chat/chat_home.dart';
import 'friend_page.dart';
import 'group/my_groups.dart';
import 'notifications_page.dart';

class HomeBshr extends StatefulWidget {
  const HomeBshr({super.key});

  @override
  State<HomeBshr> createState() => _HomeBshrState();
}

class _HomeBshrState extends State<HomeBshr> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 5, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Robot Chat"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Searchpage(),
                  ));
            },
            icon: const Icon(Icons.search),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.account_circle),
            ),
            Tab(
              icon: Icon(Icons.groups),
            ),
            Tab(
              icon: Icon(Icons.chat),
            ),
            Tab(
              icon: Icon(Icons.notifications_active),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                          title: Text("Maherov"),
                          subtitle: Text("what the fuck are you thinking for?"),
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
                ),
                const MyProfile(),
                const MyGroupPage(),
                const ChatHome(),
                const NotificationPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
