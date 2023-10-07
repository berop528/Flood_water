import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [Text('Pi;ld')],),
    );
  }
}
