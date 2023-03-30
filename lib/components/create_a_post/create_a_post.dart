import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/create_a_post_action_buttons.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/create_a_post_nav_bar.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/post.dart';

//ignore: must_be_immutable
class CreateAPost extends StatefulWidget {
  CreateAPost({super.key});

  @override
  State<CreateAPost> createState() => _CreateAPostState();
}

class _CreateAPostState extends State<CreateAPost> {
  var postTitleController = TextEditingController();
  var postContentController = TextEditingController();
  final Post post;

  _CreateAPostState()
      : post = Post(
          id: '',
          postTitle: "New Post",
          postContent: "",
          // mainType: 'Post',
        );

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
                  foreground: Paint()..color = Colors.white,
                  fontSize: 20,
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
                  onChanged: (value) => {post.postTitle = value},
                  controller: postTitleController,
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
                  onChanged: (value) => {post.postContent = value},
                  controller: postContentController,
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
                color: Theme.of(context).dividerColor,
              ),
              SizedBox(height: 30.00),
              CreateAPostActionButtons(
                post: post,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CreateAPostNavBar(),
    );
  }
}
