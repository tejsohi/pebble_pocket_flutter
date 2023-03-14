import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/create_a_post_action_buttons.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/create_a_post_nav_bar.dart';

class CreateAPost extends StatefulWidget {
  const CreateAPost({super.key});

  @override
  State<CreateAPost> createState() => _CreateAPostState();
}

class _CreateAPostState extends State<CreateAPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post'),
          backgroundColor: Color(0xFF474d55),
          actions: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              child: Text('Send'),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20.00),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Title'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'New Post',
                    ),
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                SizedBox(height: 20.00),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Content'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
                  child: TextFormField(
                    minLines: 1,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 50.00),
                Divider(
                  height: 0,
                  thickness: 0.6,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.grey,
                ),
                SizedBox(height: 30.00),
                CreateAPostActionButtons(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CreateAPostNavBar());
  }
}
