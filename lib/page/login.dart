import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'asset/image/Welcome/logo_water.png',
                  width: 400,
                ),
                Text(
                  'เข้าสู่ระบบ',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      labelText: 'ชื่อผู้ใช้',
                      // hintText: 'Please input your Username',
                      filled: true,
                      focusColor: blueskyBackground,
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      ),
                      
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      labelText: 'รหัสผ่านของคุณ',
                      // hintText: 'Please input your Password',
                      filled: true,
                      focusColor: blueskyBackground,
                      hintStyle: Theme.of(context).textTheme.bodySmall),
                ),
          
                ///InkWell ฟังชั่นใช้กล่องเพื่อสามารถทำฟังชั่นได้
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        //พาไปหน้าลืมรหัสผ่าน
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0,top: 7),
                        child: Container(
                          child: Text(
                            'ลืมรหัสผ่าน ?',
                            style: TextStyle(
                                fontFamily: 'IBMplex',
                                fontSize: 13,
                                color:
                                    greyTextColor1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //ทำงานเมื่อกดปุ่มล็อกอิน
                    },
                    child: Text('เข้าสู่ระบบ',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'หรือ',
                  style: TextStyle(
                      fontFamily: 'IBMplex',
                      fontSize: 13,
                      color: greyTextColor1),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    //พาไปหน้าสมัครสมาชิก
                  },
                  child: Container(
                    child: Text(
                      'สมัครผู้ใช้ใหม่',
                      style: TextStyle(
                          fontFamily: 'IBMplex',
                          fontSize: 13,
                          color: primaryBlue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
