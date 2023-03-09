import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/create_a_post.dart';
import 'package:pebble_pocket_flutter/components/login/login_web_view.dart';
import 'package:pebble_pocket_flutter/components/settings/settings.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 60.0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF0087cd),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Get Creative'),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Settings()));
                    },
                    icon: Icon(Icons.settings),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginWebView()));
            },
          ),
          ListTile(
            title: const Text('Asset Store'),
          ),
          ListTile(
            title: const Text('Resource Store'),
          ),
          ListTile(
            title: const Text('Create a post'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateAPost()));
            },
          ),
          ListTile(
            title: const Text('Create a reflection'),
          ),
          ListTile(
            title: const Text('Record an experience'),
          ),
          ListTile(
            title: const Text('Add a photo'),
          ),
          ListTile(
            title: const Text('Add a video'),
          ),
        ],
      ),
    );
  }
}
