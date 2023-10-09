import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteTextColor3,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,color: Colors.black,
            ),
          ),
          title: Center(
            child: Text(
              'เกี่ยวกับของฉัน',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: primaryBlue, fontSize: 22),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Image.asset('asset/image/Welcome/logo_water.png'),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'แอปพลิเคชั่นที่จัดทำขึ้นสำหรับมินิโปรเจ็ครายวิชา 932-323 MOBILE DEVICE APPLICATION DEVELOPMENT',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: greyTextColor1)),
                    Text(
                        'โดนมีจุดมุ่งหมายที่ยั่งยืนตามหัวข้อน้ำและสุขภิบาล โดยมีฟังชั่นก์ต่างๆ อาทิเช่น',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: greyTextColor1)),
                    Text('1. การแจ้งปัญหาสำหรับการได้รับประสบอุทกภัย',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: greyTextColor1)),
                    Text('2. การแจ้งเตือนข่าวสารสำหรับการเฝ้าระวังอุทกภัย',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: greyTextColor1)),
                    Text('จัดทำขึ้นโดย',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: greyTextColor1)),
                    Text('นายพีรวิชญ์ นวลทอง 6340011008',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: greyTextColor1)),
                    Text('นายเอกวี พวงบุบผา 6340011020',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: greyTextColor1))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
