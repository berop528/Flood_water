import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: fullname,
                  decoration: InputDecoration(
                    labelText: 'ชื่อ - สกุล',
                    hintText: 'ใส่ชื่อ - สกุล',
                    filled: true,
                  ),
                ),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                    labelText: 'หมายเลขโทรศัพท์',
                    hintText: 'ใส่หมายเลขโทรศัพท์',
                    filled: true,
                  ),
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: 'อีเมลล์',
                    hintText: 'ใส่อีเมลล์',
                    filled: true,
                  ),
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    hintText: 'ใส่รหัสผ่าน',
                    filled: true,
                  ),
                ),
                TextFormField(
                  controller: confirmPassword,
                  decoration: InputDecoration(
                    labelText: 'ยืนยันรหัสผ่าน',
                    hintText: 'ใส่รหัสผ่านอีกครั้ง',
                    filled: true,
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
