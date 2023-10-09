import 'dart:convert';

import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditUser extends StatefulWidget {
  final Map list;
  const EditUser({Key? key, required this.list})
      : super(key: key);

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  
  TextEditingController fullname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  void initState() {
    fullname.text =   widget.list['user_fullname'];
    phonenumber.text = widget.list['user_phoneNumber'];
    email.text = widget.list['user_email'];
    super.initState();
  }

  Future<void> getPost() async {
    const urlstr = "http://172.21.233.209/flood flow/edit_user.php";

    final url = Uri.parse(urlstr);
    final response = await http.post(
      url,
      body: { 
        'user_email': email ,
        'user_phoneNumber' : phonenumber,
        'user_fullname' : fullname,

        }   
      );
    print(response.statusCode);
    if (response.statusCode == 200) {
      //Successful
      final json = response.body;
      final data = jsonDecode(json);
      debugPrint('Data: $data');
    } else {
      //Error
    }
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
  
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'แก้ไขโปรไฟล์',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'email',
                      filled: true,
                      focusColor: blueskyBackground,
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      enabled: false
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: fullname,
                    decoration: InputDecoration(
                      hintText: 'ชื่อ-นามสกุล',
                      filled: true,
                      focusColor: blueskyBackground,
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: phonenumber,
                    decoration: InputDecoration(
                      hintText: 'เบอร์โทร',
                      filled: true,
                      focusColor: blueskyBackground,
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                    ),
                    maxLines: 10, // <-- SEE HERE
                    minLines: 1,
                  ),

                  ///InkWell ฟังชั่นใช้กล่องเพื่อสามารถทำฟังชั่นได้

                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        //ทำงานเมื่อกดปุ่มล็อกอิน
                      },
                      child: Text('แจ้งปัญหา',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              )),
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
