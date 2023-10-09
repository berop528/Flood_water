import 'dart:async';

import 'package:flutter/material.dart';

class Confirm extends StatefulWidget {
  const Confirm({super.key});

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context,'/runhome')
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

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('asset/image/undraw_landscape_photographer_blv1 1.png'),
            Text(
                  'แจ้งปัญหาเรียบร้อย',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
          ],
        ),
      ),
    );
  }
}