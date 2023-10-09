import 'dart:convert';

import 'package:flood_waterapp/page/tell_success.dart';
import 'package:flutter/material.dart';
import 'package:flood_waterapp/color.dart';
import 'package:http/http.dart' as http;

class TellPromBlem extends StatefulWidget {
  final String loginUser;
  final String userName;
  final String userID;
  final String userphone;
  final String userEmail;

  const TellPromBlem({
    super.key,
    required this.loginUser,
    required this.userID,
    required this.userName,
    required this.userphone,
    required this.userEmail,
  });

  @override
  State<TellPromBlem> createState() => _TellPromBlemState();
}

class _TellPromBlemState extends State<TellPromBlem> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController topic = TextEditingController();
  TextEditingController detail = TextEditingController();

  Future addProblem() async {
    var urlstr = "http://172.21.245.64/flood_flow/insert_post.php";
    var url = Uri.parse(urlstr);
    var response = await http.post(url, body: {
      'user_id': widget.userID,
      'post_topic': topic.text,
      'post_detail': detail.text
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      print(data);
      if (data == "Error") {
        print("error");
      } else if (data == "Success") {
        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Confirm(),
          ),
        );
        
      } else {
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'แจ้งปัญหาน้ำท่วม',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: topic,
                    decoration: InputDecoration(
                      hintText: 'หัวข้อการแจ้ง',
                      filled: true,
                      focusColor: blueskyBackground,
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: detail,
                    decoration: InputDecoration(
                      hintText: 'รายละเอียด',
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
                      onPressed: () async {
                        //ทำงานเมื่อกดปุ่มล็อกอิน
                        await addProblem();
                
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
