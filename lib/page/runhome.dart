import 'package:flood_waterapp/page/appbarmain.dart';
import 'package:flood_waterapp/page/feed_news.dart';
import 'package:flood_waterapp/page/homepage.dart';
import 'package:flood_waterapp/page/main_drawer.dart';
import 'package:flood_waterapp/page/accountPage.dart';
import 'package:flood_waterapp/page/settingProfile.dart';
import 'package:flood_waterapp/page/tell_promblem.dart';
import 'package:flutter/material.dart';

class RunHome extends StatefulWidget {
  final String loginUser;
  final String userName;
  final String userID;
  final String userphone;
  final String userEmail;
  const RunHome({Key? key, 

    required this.loginUser,
    required this.userID,
    required this.userName,
    required this.userphone,
    required this.userEmail,
  }) : super(key: key);

  @override
  State<RunHome> createState() => _HomePageState();
}

class _HomePageState extends State<RunHome> {
  @override
  Widget build(BuildContext context) {
    // final Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBarMain(data: data),
          bottomNavigationBar: buildTabBar(),
          // drawer: MainDrawer(data: data),
          body: TabBarView(
            children: [
              HomeNew(
                loginUser: widget.loginUser,
              ),
              TellPromBlem(
                  loginUser: widget.loginUser,userID: widget.userID , userphone: widget.userphone, userEmail: widget.userEmail, userName: widget.userName
                  ),
              FeddNews(),
              ProfileSetting(loginUser: widget.loginUser,userID: widget.userID , userphone: widget.userphone, userEmail: widget.userEmail, userName: widget.userName,
              
              
              )
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
            text: 'โปรไฟล์',
            icon: Icon(
              Icons.account_circle,
            ),
          ),
        ],
      ),
    );
  }
}
