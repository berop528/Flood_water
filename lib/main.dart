import 'package:flood_waterapp/page/feed_news.dart';
import 'package:flood_waterapp/page/homepage.dart';
import 'package:flood_waterapp/page/accountPage.dart';
import 'package:flood_waterapp/page/runhome.dart';
import 'package:flood_waterapp/page/login.dart';
import 'package:flood_waterapp/page/register.dart';
import 'package:flood_waterapp/page/tell_promblem.dart';
import 'package:flood_waterapp/page/welcome.dart';
import 'package:flood_waterapp/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: floodTheme(),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const Welcome(), //หน้ายินดีต้อนรัย
        '/login': (context) => const Login(), //หน้าเข้าสู่ระบบ
        '/register': (context) => const Register(), //หน้าสมัครสมาชิก
        '/homepage' : (context) => const HomeNew(), //หน้าแรก
        '/runhome':(context) => const RunHome(), //หน้าจอหลักในการแสดง UI 
        '/feed' :(context) => const FeddNews(),  //หน้าข่าวสาร
        '/Account' : (context) => const  AccountPage(), //หน้าบัญชีของฉัน
        '/tellNews' : (context) => const TellPromBlem() //หน้าแจ้งปัญหาข่าว
      }, 
    );
  }
}
