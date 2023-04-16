import 'package:flutter/material.dart';
import 'create_a_post_action_buttons.dart';
import 'create_a_post_nav_bar.dart';
import 'models/post.dart';

class EditAPost extends StatefulWidget {
  final Post post;
  const EditAPost({required this.post});

  @override
  State<EditAPost> createState() => _EditAPostState();
}

class _EditAPostState extends State<EditAPost> {
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
                  controller: TextEditingController()
                    ..text = widget.post.postTitle,
                  onChanged: (value) => {widget.post.postTitle = value},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
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
                  initialValue: widget.post.postContent,
                  onChanged: (value) => {widget.post.postContent = value},
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
                post: widget.post,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CreateAPostNavBar(),
    );
  }
}
