import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/post.dart';

class PostInfo extends StatelessWidget {
  final Post post;

  PostInfo({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('content/images/icons/post.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.postTitle,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Created: Friday at 00:00pm',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        Divider(
          height: 0,
          thickness: 1,
          indent: 5,
          endIndent: 5,
          color: Colors.grey,
        ),
      ],
    );
  }
}
