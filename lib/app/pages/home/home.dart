import 'package:alkhalil/app/pages/home/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../account/my_profile.dart';
import '../chat/chat_home.dart';
import '../group/my_groups.dart';
import '../notification/notifications_page.dart';
import 'home_page.dart';

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
              children: const [
                HomePage(),
                MyProfile(),
                MyGroupPage(),
                ChatHome(),
                NotificationPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeBshrIos extends StatefulWidget {
  const HomeBshrIos({super.key});

  @override
  State<HomeBshrIos> createState() => _HomeBshrIosState();
}

class _HomeBshrIosState extends State<HomeBshrIos>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.group_solid),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2_fill),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.app_badge),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const HomePageIos();
          case 1:
            return const MyProfile();
          case 2:
            return const MyGroupPage();
          case 3:
            return const ChatHome();
          case 4:
            return const NotificationPage();
          default:
            return const Text("null");
        }
      },
    );
  }
}
