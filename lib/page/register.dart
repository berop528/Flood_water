import 'dart:convert';

import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  Future addUser() async {
    var urlstr = 'http://172.21.245.64/flood_flow/insert_user.php';
    var data = {};
    var url = Uri.parse(urlstr);
    data['user_fullname'] = fullname.text;
    data['user_phoneNumber'] = phone.text;
    data['user_email'] = email.text;
    data['user_password'] = password.text;

    var response = await http.post(
      url,
      body: data,
    );
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print('efef$data');
      if (data == 'Error') {
        Fluttertoast.showToast(
            msg: "บัญชีนี้มีผู้ใช้งานแล้ว",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Theme.of(context).primaryColor,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (data == 'Success') {
        Navigator.pushNamed(context, '/login');
      } else {
        Fluttertoast.showToast(
            msg: "Insert Error",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Theme.of(context).primaryColor,
            textColor: Colors.white,
            fontSize: 16.0);
        // Toast.show(
        //   "Insert Error",
        //   context,
        //   duration: Toast.LENGTH_SHORT,
        //   gravity: Toast.BOTTOM,
        // );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    'สมัครการใช้งาน',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: primaryBlue, fontSize: 35),
                  ),
                  TextFormField(
                    controller: fullname,
                    decoration: InputDecoration(
                      labelText: 'ชื่อ - สกุล',
                      hintText: 'ใส่ชื่อ - สกุล',
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'โปรดใส่ชื่อของคุณ';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: phone,
                    decoration: InputDecoration(
                      labelText: 'หมายเลขโทรศัพท์',
                      hintText: 'ใส่หมายเลขโทรศัพท์',
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'โปรดใส่หมายเลขโทรศัพท์ของคุณ';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'อีเมลล์',
                      hintText: 'ใส่อีเมลล์',
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'โปรดใส่อีเมลล์ของคุณ';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      labelText: 'รหัสผ่าน',
                      hintText: 'ใส่รหัสผ่าน',
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'โปรดใส่รหัสผ่านของคุณ';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: confirmPassword,
                    decoration: InputDecoration(
                      labelText: 'ยืนยันรหัสผ่าน',
                      hintText: 'ใส่รหัสผ่านอีกครั้ง',
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'โปรดใส่อีเมลล์ของคุณ';
                      } else if (value != password.text) {
                        return 'โปรดใส่รหัสผ่านให้ตรงกัน';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await addUser();
                      }
                    },
                    child: Text('Register'),
                  ),
                  Text(
                    'หรือ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: greyTextColor1),
                  ),
                  InkWell(
                    onTap: () {
                      //พาไปหน้าสมัครสมาชิก
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Text(
                        'มีบัญชีอยู่แล้ว',
                        style: TextStyle(fontSize: 13, color: primaryBlue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
