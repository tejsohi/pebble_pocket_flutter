import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/models/post.dart';
import 'package:intl/intl.dart';

class PostInfo extends StatelessWidget {
  final Post post;

  PostInfo({required this.post});

  String getDayOfMonthSuffix(int dayNum) {
    if (!(dayNum >= 1 && dayNum <= 31)) {
      throw Exception('Invalid day of month');
    }

    if (dayNum >= 11 && dayNum <= 13) {
      return 'th';
    }

    switch (dayNum % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  Widget getDate() {
    if (post.created.day == DateTime.now().day) {
      return Text('Created: Today at ${DateFormat.jm().format(post.created)}');
    } else if (post.created.day == DateTime.now().day - 1) {
      return Text(
          'Created: Yesterday at ${DateFormat.jm().format(post.created)}');
    }
    return Text(
        'Created: ${DateFormat('EEEE').format(post.created)} ${DateFormat('d').format(post.created)}${getDayOfMonthSuffix(post.created.day)} at ${DateFormat.jm().format(post.created)}');
  }

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
                SizedBox(height: 1),
                getDate(),
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
