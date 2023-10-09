import 'dart:convert';

import 'package:flood_waterapp/color.dart';
import 'package:flood_waterapp/page/homepage.dart';
import 'package:flood_waterapp/page/runhome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userEmail = TextEditingController();
  TextEditingController password = TextEditingController();

  int check = 0;
  String errorText = '';
  
  Future<void> checkLogin() async {
    String urlstr = 'http://192.168.9.226/flood_flow/checklogin.php';

    final url = Uri.parse(urlstr);

    final response = await http.post(
      url,
      body: {'user_email': userEmail.text, 'password': password.text},
    );

    print(response.statusCode);
    if (response.statusCode == 200) {
      final json = response.body;
      // print('efe$json');
      final data = jsonDecode(json);
      if (data == 'Completed') {
        setState(() {
          check = 1;
        });
        print('result $data');
      } else {
        Fluttertoast.showToast(
            msg: "Please check username or password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.purple,
            textColor: Colors.white,
            fontSize: 16.0);
        print('Result: $data');
      }
    } else {
      setState(() {
        errorText = 'Connection error';
      });
    }
  }

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
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: primaryBlue),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: userEmail,
                  decoration: InputDecoration(
                    labelText: 'ชื่อผู้ใช้',
                    // hintText: 'Please input your Username',
                    filled: true,
                    focusColor: blueskyBackground,
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'โปรดใส่อีเมลล์ของคุณ';
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'โปรดใส่รหัสผ่านของคุณ';
                    }
                    return null;
                  },
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
                        padding: const EdgeInsets.only(right: 10.0, top: 7),
                        child: Container(
                          child: Text(
                            'ลืมรหัสผ่าน ?',
                            style: TextStyle(
                                fontFamily: 'IBMplex',
                                fontSize: 13,
                                color: greyTextColor1),
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
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await checkLogin();
                        if (check == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RunHome(
                                loginUser: userEmail.text,
                                userID: '',
                                userName: '',
                                userEmail: '',
                                userphone: '',
                              ),
                            ),
                          );
                        } else {
                          print(check);
                        }
                      }
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
                    Navigator.pushNamed(context, '/register');
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
