import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/models/post.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateAPostActionButtons extends StatefulWidget {
  final Post post;

  CreateAPostActionButtons({required this.post});

  @override
  State<CreateAPostActionButtons> createState() =>
      _CreateAPostActionButtonsState();
}

class _CreateAPostActionButtonsState extends State<CreateAPostActionButtons> {
  Future<void> savePost(Post post) async {
    //Generate new ID
    var id = Uuid().v4().toString();
    post.id = id;

    //Initiate Local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //get exising posts if there are any otherwise return null.
    // var existingPostData = '';
    var existingPostData = prefs.getString('post');
    print(existingPostData);

    if (existingPostData == null) {
      List<Post> posts = [];
      posts.add(post);

      final String encodedData = Post.encode(posts);
      prefs.setString('post', encodedData);
    } else {
      List<Post> posts = Post.decode(existingPostData);
      posts.add(post);

      final String multplieEncodedData = Post.encode(posts);
      prefs.setString('post', multplieEncodedData);
    }

    Fluttertoast.showToast(
        msg:
            'Your Post has been saved. Remeber to send to Pebble+ when complete',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 15);
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
              Navigator.pop(context);
            },
            child: Text('Save to device'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Theme.of(context).cardColor),
            minimumSize: MaterialStateProperty.all(
              Size(200, 40),
            ),
            side: MaterialStateProperty.all(
              BorderSide(color: Colors.grey),
            ),
          ),
          child: Text(
            'Cancel',
          ),
        ),
      ],
    );
  }
}
