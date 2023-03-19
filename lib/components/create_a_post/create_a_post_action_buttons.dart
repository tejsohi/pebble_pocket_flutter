import 'package:flutter/material.dart';
import 'package:localstore/localstore.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/post.dart';

class CreateAPostActionButtons extends StatefulWidget {
  // final String postTitle;
  // final String postContent;
  final Post post;
  CreateAPostActionButtons({required this.post});

  @override
  State<CreateAPostActionButtons> createState() =>
      _CreateAPostActionButtonsState();
}

class _CreateAPostActionButtonsState extends State<CreateAPostActionButtons> {
  Future<void> savePost(postTitle, postContent) async {
    final db = Localstore.instance;
    final id = db.collection('post').doc().id;

    db
        .collection('post')
        .doc(id)
        .set({'postTitle': postTitle, 'postContent': postContent});

    print(postTitle + postContent);
    print('successfull save');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButtonTheme(
          data: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF0087cd)),
              elevation: MaterialStateProperty.all(0.0),
              minimumSize: MaterialStateProperty.all(
                Size(200, 40),
              ),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
              savePost(widget.post.postTitle, widget.post.postContent);
            },
            child: Text('Save to device'),
          ),
        ),
        ElevatedButtonTheme(
          data: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xFFffffff),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(200, 40),
              ),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                elevation: 0,
                side: BorderSide(color: Colors.grey)),
            child: Text(
              'Cancel',
            ),
          ),
        ),
      ],
    );
  }
}
