import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/post.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/post_info.dart';
import 'package:uuid/uuid.dart';

// ignore: must_be_immutable
class MyAssets extends StatefulWidget {
  MyAssets({super.key});

  @override
  State<MyAssets> createState() => _MyAssetsState();
}

class _MyAssetsState extends State<MyAssets> {
  final Uuid id;

  _MyAssetsState() : id = Uuid();
  List<Post> myAssets = [
    Post(
      // id: Uuid(),
      postTitle: "DefaultTitle",
      postContent: 'DefultContent',
    ),
  ];

  // _MyAssetsState() : myAssets = <Post>[];

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/post.json');
  }

  Future<void> loadData() async {
    final file = await _localFile;

    // Read the file
    final contents = await file.readAsString();

    var postMap = jsonDecode(contents);

    var postInfo = Post.fromJson(postMap);

    setState(() {
      myAssets.add(Post(
          // id: Uuid(),
          postTitle: postInfo.postTitle,
          postContent: postInfo.postContent));
    });

    for (var asset in myAssets) {
      print(asset.postTitle);
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Assets'),
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
            child: Text('Send all'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: myAssets.map((post) => PostInfo(post: post)).toList(),
        ),
      ),
    );
  }
}
