import 'package:flutter/material.dart';

class FeddNews extends StatefulWidget {
  const FeddNews({Key? key}) : super(key: key);

  @override
  State<FeddNews> createState() => _FeddNewsState();
}

class _FeddNewsState extends State<FeddNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:
    Column(children: [Text('wfd')],)
    );
  }
}