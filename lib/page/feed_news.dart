import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FeddNews extends StatefulWidget {
  const FeddNews({Key? key}) : super(key: key);

  @override
  State<FeddNews> createState() => _FeddNewsState();
}

class _FeddNewsState extends State<FeddNews> {
  List<dynamic> post = [];

  @override
  void initState() {
    getPost();
    super.initState();
  }

  Future<void> getPost() async {
    const urlstr = "http://172.21.245.64/floodflow/select_post.php";

    final url = Uri.parse(urlstr);
    final response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      //Successful
      final json = response.body;
      final data = jsonDecode(json);
      debugPrint('Data: $data');
      setState(() {
        post = data;
      });
    } else {
      //Error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: post.length,
                itemBuilder: (BuildContext context, int index) {
                  final topic = post[index]['post_topic'];
                  final detail = post[index]['post_detail'];
                  final userFullname = post[index]['user_fullname'];
        
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            child: Text(userFullname[0]),
                          ),
                          title: Text(
                            userFullname,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          subtitle: Text("17 กันยายน 2566  -  14 : 57 น." ,style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ), ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(topic,style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(detail, style: TextStyle(color: Colors.blueGrey ,fontWeight: FontWeight.w100))),
                        Padding(
                          padding: EdgeInsets.all(
                              8.0), // ปรับการขยายระยะห่างตามต้องการ
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.location_on,  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              Text("อำเภอเมือง สุราษฎร์ธานี"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              // Add more widgets here if needed.
            ],
          ),
        ),
      ),
    );
  }
}
