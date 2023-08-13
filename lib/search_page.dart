import 'package:flutter/material.dart';
import 'mybar.dart' as mybar;
import 'notifications_page.dart';

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
              padding: const EdgeInsets.all(10.0),
              child: mybar.SearchAnchor.bar(
                barHintText: "Search .....",
                viewHintText: "Search .....",
                isFullScreen: false,
                barLeading: const BackButton(),
                barTrailing: const [Icon(Icons.search)],
                suggestionsBuilder: (context, controller) => [],
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
