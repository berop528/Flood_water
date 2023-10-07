import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';

class ListTileMenu extends StatelessWidget {
  final IconData icon;
  final String menuName;
  final String routeName;
  final Map data;

  const ListTileMenu(
      {super.key,
      required this.icon,
      required this.menuName,
      required this.routeName,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 30, color: primaryBlue),
      title: Text(
        menuName,
        style: TextStyle(fontSize: 15, color: primaryBlue),
      ),
      onTap:(){
        Navigator.pushNamed(context, routeName, arguments: data);
      }
    );
  }
}
