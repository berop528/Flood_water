import 'dart:convert';

import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

class HomeNew extends StatefulWidget {
  const HomeNew({Key? key}) : super(key: key);

  @override
  State<HomeNew> createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  Map<String, dynamic> location = {};
  Map<String, dynamic> weather = {};
  Map<String, dynamic> current = {};

  @override
  // void initState() {
  //   getWeather();
  //   super.initState();
  // }

  // Future getWeather() async {
  //   const url =
  //       'https://api.weatherapi.com/v1/current.json?key=8191e81362fd44ed9b7112700230110&q=Surat Thani&aqi=yes';
  //   final uri = Uri.parse(url);
  //   final response = await http.get(uri);

  //   if (response.statusCode == 200) {
  //     final json = response.body;
  //     final data = jsonDecode(json);
  //     setState(() {
  //       location = data['location'];
  //       current = data['current'];
  //       weather = data['current']['condition'];

  //       // aa = weather;
  //       // print('efef{$aa}');
  //     });
  //   } else {}
  // }

  @override
  Widget build(BuildContext context) {
    final dynamic province = location['name'];
    final dynamic time = location['localtime'];

    final dynamic temp = weather['text'];
    final dynamic icon = weather['icon'];
    final dynamic cloudy = current['cloud'];
    final dynamic humidity = current['humidity'];
    final dynamic speedWind = current['wind_kph'];
    final dynamic coludPm = current['pm2_5'];
    return SafeArea(
      child: Scaffold(
          backgroundColor: primaryBlue,
          appBar: AppBar(
            title: Text(
              'หน้าแรก',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // จัดการวางแนวนอนระหว่าง Text และรูป
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // จัดการวางแนวตั้งสำหรับ Text
                                children: [
                                  Text(
                                    'ยินดีต้อนรับ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.black),
                                  ),
                                  Text(
                                    'ชื่อผู้ใช้',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.black),
                                  ),
                                  Text(
                                    'ใส่วันที่',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.black),
                                  ),
                                ],
                              ),
                              Text(
                                'efef',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
