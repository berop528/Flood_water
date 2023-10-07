import 'package:flood_waterapp/page/listTileMenu.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.data});
  final Map data;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTileMenu(
            icon: Icons.home,
            menuName: 'หน้าแรก',
            routeName: '/homepage',
            data: data,
          ),
          ListTileMenu(
            icon: Icons.home,
            menuName: 'แจ้งข่าว',
            routeName: '/tellNews',
            data: data,
          ),
          ListTileMenu(
            icon: Icons.home,
            menuName: 'ข่าวสาร',
            routeName: '/feed',
            data: data,
          ),
          ListTileMenu(
            icon: Icons.home,
            menuName: 'แจ้งเตือน',
            routeName: '//nontification',
            data: data,
          ),
        ],
      ),
    );
  }
}
