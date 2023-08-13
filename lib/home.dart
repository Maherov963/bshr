import 'package:alkhalil/search_page.dart';
import 'package:flutter/material.dart';
import 'friend_page.dart';
import 'notifications_page.dart';

class HomeBshr extends StatefulWidget {
  const HomeBshr({super.key});

  @override
  State<HomeBshr> createState() => _HomeBshrState();
}

class _HomeBshrState extends State<HomeBshr> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 6, vsync: this);
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
              icon: Icon(Icons.group),
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
              children: const [
                Column(),
                Column(),
                FriendPage(),
                Column(),
                Column(),
                NotificationPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
