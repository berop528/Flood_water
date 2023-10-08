import 'dart:convert';

import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeNew extends StatefulWidget {
  const HomeNew({Key? key}) : super(key: key);

  @override
  State<HomeNew> createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  Map<String, dynamic> location = {};
  Map<String, dynamic> weather = {};
  Map<String, dynamic> current = {};
  Map<String, dynamic> colud = {};
  @override
  void initState() {
    getWeather();
    super.initState();
  }

  Future getWeather() async {
    const url =
        'https://api.weatherapi.com/v1/current.json?key=8191e81362fd44ed9b7112700230110&q=Surat Thani&aqi=yes';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final json = response.body;
      final data = jsonDecode(json);
      setState(() {
        location = data['location'];
        current = data['current'];
        weather = data['current']['condition'];
        colud = data['current']['air_quality'];
        // aa = weather;
        // print('efef{$aa}');
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    final dynamic province = location['name'];
    final dynamic time = location['localtime'];

    final dynamic weathers = weather['text'];
    Widget weatherImage;

    if (weathers == 'Light rain') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/293.png');
    } else if (weathers == 'Sunny') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/113.png');
    } else if (weathers == 'Partly cloudy') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/116.png');
    } else if (weathers == 'Cloudy') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/119.png');
    } else if (weathers == 'Overcast') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/122.png');
    } else if (weathers == 'Mist') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/143.png');
    } else if (weathers == 'Patchy rain possible') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/176.png');
    } else if (weathers == 'Patchy snow possible') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/179.png');
    } else if (weathers == 'Patchy sleet possible') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/182.png');
    } else if (weathers == 'Patchy freezing drizzle possible') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/185.png');
    } else if (weathers == 'Thundery outbreaks possible') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/200.png');
    } else if (weathers == 'Blowing snow') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/227.png');
    } else if (weathers == 'Blizzard') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/230.png');
    } else if (weathers == 'Fog') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/248.png');
    } else if (weathers == 'Freezing fog') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/260.png');
    } else if (weathers == 'Patchy light drizzle') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/263.png');
    } else if (weathers == 'Light drizzle') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/266.png');
    } else if (weathers == 'Freezing drizzle') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/281.png');
    } else if (weathers == 'Heavy freezing drizzle') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/284.png');
    } else if (weathers == 'Patchy light rain') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/293.png');
    } else if (weathers == 'Light rain') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/296.png');
    } else if (weathers == 'Moderate rain at times') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/299.png');
    } else if (weathers == 'Moderate rain') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/302.png');
    } else if (weathers == 'Heavy rain at times') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/305.png');
    } else if (weathers == 'Heavy rain') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/308.png');
    } else if (weathers == 'Light freezing rain') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/311.png');
    } else if (weathers == 'Moderate or heavy freezing rain') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/314.png');
    } else if (weathers == 'Light sleet') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/317.png');
    } else if (weathers == 'Moderate or heavy sleet') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/320.png');
    } else if (weathers == 'Patchy light snow') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/323.png');
    } else if (weathers == 'Light snow') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/326.png');
    } else if (weathers == 'Patchy moderate snow') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/329.png');
    } else if (weathers == 'Moderate snow') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/332.png');
    } else if (weathers == 'Patchy heavy snow') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/335.png');
    } else if (weathers == 'Heavy snow') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/338.png');
    } else if (weathers == 'Ice pellets') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/350.png');
    } else if (weathers == 'Light rain shower') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/353.png');
    } else if (weathers == 'Moderate or heavy rain shower') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/356.png');
    } else if (weathers == 'Torrential rain shower') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/359.png');
    } else if (weathers == 'Light sleet showers') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/362.png');
    } else if (weathers == 'Moderate or heavy sleet showers') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/365.png');
    } else if (weathers == 'Light snow showers') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/368.png');
    } else if (weathers == 'Moderate or heavy snow showers') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/371.png');
    } else if (weathers == 'Light showers of ice pellets"') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/374.png');
    } else if (weathers == 'Moderate or heavy showers of ice pellets') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/377.png');
    } else if (weathers == 'Patchy light rain with thunder') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/386.png');
    } else if (weathers == 'Moderate or heavy rain with thunder') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/389.png');
    } else if (weathers == 'Patchy light snow with thunder') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/392.png');
    } else if (weathers == 'Moderate or heavy snow with thunder') {
      weatherImage = Image.asset('asset/image/weather/64x64/day/395.png');
    } else {
      return Container(
        child: Text('Null'),
      );
    }

    final dynamic temp = current['temp_c'];
    final dynamic cloudy = current['cloud'];
    final dynamic humidity = current['humidity'];
    final dynamic speedWind = current['wind_kph'];
    final dynamic coludPm = colud['pm2_5'];
    return SafeArea(
      child: Scaffold(
        // backgroundColor: primaryBlue,
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
                height: 20,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // สีขอบ
                        spreadRadius: 5, //ความกว้างขอบ
                        blurRadius: 7,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
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
                                        .copyWith(color: primaryBlue),
                                  ),
                                  Text(
                                    '$time',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: yellowSecondary),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    // AssetImage(
                                    //   'asset/image/weather/64x64/day/116.png')

                                    Image.network(
                                            'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg')
                                        .image,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: yellowSecondary),
                        Text(
                          'จังหวัด $province',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      // color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween, // จัดการวางแนวนอนระหว่าง Text และรูป
                              children: [
                                Column(
                                  children: [
                                    Text('$weathers',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '$temp °C',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                weatherImage,
                                // Text('efef',style: TextStyle(color: Colors.black),)

                                ///
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 290,
                child: GridView.count(
                  crossAxisCount: 2, // จำนวนคอลัม
                  children: <Widget>[
                    // รายการ Widget ใน GridView
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(10), // ปรับขอบให้เป็นโค้ง
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.wb_cloudy,
                              color: Theme.of(context).colorScheme.background,
                            ),
                            Text('เมฆปกคลุม'),
                            Text('$cloudy %')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.circular(10), // ปรับขอบให้เป็นโค้ง
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.water_drop,
                                color:
                                    Theme.of(context).colorScheme.background),
                            Text('ความชื้น'),
                            Text('$humidity %')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(10), // ปรับขอบให้เป็นโค้ง
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.wind_power,
                                color:
                                    Theme.of(context).colorScheme.background),
                            Text('แรงลม'),
                            Text('$speedWind Km/h')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius:
                            BorderRadius.circular(10), // ปรับขอบให้เป็นโค้ง
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.wb_cloudy,
                                color:
                                    Theme.of(context).colorScheme.background),
                            Text('Pm2.5'),
                            Text('$coludPm %')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
