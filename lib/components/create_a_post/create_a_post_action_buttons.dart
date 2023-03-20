import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
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
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/post.json');
  }

  Future<void> savePost(Post post) async {
    final file = await _localFile;

    file.writeAsStringSync(jsonEncode('$post,'), mode: FileMode.append);
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
              savePost(widget.post);
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
