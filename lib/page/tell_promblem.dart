import 'package:flutter/material.dart';

class TellPromBlem extends StatefulWidget {
  const TellPromBlem({super.key});

  @override
  State<TellPromBlem> createState() => _TellPromBlemState();
}

class _TellPromBlemState extends State<TellPromBlem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [Text('Teel Prom')],));
  }
}