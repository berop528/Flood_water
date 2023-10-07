import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';

class AppBarMain extends StatefulWidget implements PreferredSizeWidget {
  const AppBarMain({super.key, required this.data});

  final Map data;
  @override
  State<AppBarMain> createState() => _AppBarMainState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu, color: Theme.of(context).colorScheme.primary),
        ),
      ),
      titleTextStyle: Theme.of(context).textTheme.headlineSmall,
      elevation: 0,
      title: (Text(
        'Flood_water',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: darkblueTextColor2),
      )),
      centerTitle: false,
    );
  }
}
