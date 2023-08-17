import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../notification/notifications_page.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              indicatorColor: Colors.blue,
              tabs: const [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.group),
                ),
                Tab(
                  icon: Icon(Icons.groups),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const Column(),
                  ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      title: const Text("Maherov"),
                      trailing: getButton(text: "Add", color: Colors.green),
                    ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 7,
                  ),
                  ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      title: const Text("Gaming group"),
                      trailing: getButton(text: "Request", color: Colors.green),
                    ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 7,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
