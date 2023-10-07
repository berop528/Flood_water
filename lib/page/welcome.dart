import 'dart:async';
// import 'package:flood_waterapp/page/login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _NameState();
}

class _NameState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context,'/login')
      //   Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const Login(),
      //   ),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.primary
            ]
          )
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('asset/image/Welcome/logo_water.png'),
            Text('Flood Flow',style: Theme.of(context).textTheme.headlineLarge,)
            ],
        )),
      ),
    );
  }
}
