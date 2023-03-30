import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/post_info.dart';
import 'package:pebble_pocket_flutter/components/my_assets/assets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../create_a_post/post.dart';

// ignore: must_be_immutable
class MyAssets extends StatefulWidget {
  MyAssets({super.key});

  @override
  State<MyAssets> createState() => _MyAssetsState();
}

class _MyAssetsState extends State<MyAssets> {
  final Assets assets;

  _MyAssetsState() : assets = Assets(posts: []);

  Future<void> loadPosts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String getPrefs = prefs.getString('post') ?? '';

    if (getPrefs.isNotEmpty) {
      List<Post> posts = Post.decode(getPrefs);

      setState(() {
        if (posts.isNotEmpty) {
          for (var post in posts) {
            assets.posts.add(post);
          }
        }
      });
    }
  }

  checkIfAnyAssets() {
    if (assets.posts.isNotEmpty) {
      return assets.posts.map((post) {
        PostInfo(post: post);
      }).toList();
    }

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        'You have no assets',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadPosts();
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Assets stored on this device',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey,
          ),
          Column(
            children: [checkIfAnyAssets()],
          ),
        ],
      ),
    );
  }
}
