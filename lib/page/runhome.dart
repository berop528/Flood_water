import 'package:flood_waterapp/page/appbarmain.dart';
import 'package:flood_waterapp/page/feed_news.dart';
import 'package:flood_waterapp/page/homepage.dart';
import 'package:flood_waterapp/page/main_drawer.dart';
import 'package:flood_waterapp/page/accountPage.dart';
import 'package:flood_waterapp/page/tell_promblem.dart';
import 'package:flutter/material.dart';


class RunHome extends StatefulWidget {
  const RunHome({Key? key}) : super(key: key);

  @override
  State<RunHome> createState() => _HomePageState();
}

class _HomePageState extends State<RunHome> {
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBarMain(data: data),
          bottomNavigationBar: buildTabBar(),
          drawer: MainDrawer(data: data),
          body: TabBarView(
            children: const [
              HomeNew(),
              TellPromBlem(),
              FeddNews(),
              AccountPage(),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTabBar() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TabBar(
        tabs: const [
          Tab(
            text: 'หน้าแรก',
            icon: Icon(
              Icons.home,
            ),
          ),
          Tab(
            text: 'แจ้งปัญหา',
            icon: Icon(
              Icons.add_circle,
            ),
          ),
          Tab(
            text: 'ข่าวสาร',
            icon: Icon(
              Icons.feed,
            ),
          ),
          Tab(
            text: 'การแจ้งเตือน',
            icon: Icon(
              Icons.notifications_none,
            ),
          ),
        ],
      ),
    );
  }
}
