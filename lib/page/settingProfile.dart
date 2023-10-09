import 'package:flutter/material.dart';

class ProfileSetting extends StatefulWidget {
  final String loginUser;
  final String userName;
  final String userID;
  final String userphone;
  final String userEmail; 
  const ProfileSetting({Key? key ,
    required this.loginUser,
    required this.userID,
    required this.userName,
    required this.userphone,
    required this.userEmail,
  
  }) : super(key: key);

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          radius: 30.0,
          child: Text("M"),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            "Mary Nissin",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text("Mary.n@gmail.com",
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.w100)),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "แก้ไขบัญชีตัวเอง",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              Icon(
                Icons.arrow_right,
                size: 50,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "เกี่ยวกับฉัน",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              Icon(
                Icons.arrow_right,
                size: 50,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ลบบัญชีของตน",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onError,
                    ),
              ),
              Icon(
                Icons.arrow_right,
                size: 50,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            //ทำงานเมื่อกดปุ่มล็อกอิน
          },
          child: Text('ออกจากระบบ',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
        ),
      ]),
    );
  }
}
