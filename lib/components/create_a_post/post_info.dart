import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/edit_a_post.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/models/post.dart';
import 'package:intl/intl.dart';

class PostInfo extends StatefulWidget {
  final Post post;

  PostInfo({required this.post});

  @override
  State<PostInfo> createState() => _PostInfoState();
}

class _PostInfoState extends State<PostInfo> {
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
    if (widget.post.created.day == DateTime.now().day) {
      return Text(
          'Created: Today at ${DateFormat.jm().format(widget.post.created)}');
    } else if (widget.post.created.day == DateTime.now().day - 1) {
      return Text(
          'Created: Yesterday at ${DateFormat.jm().format(widget.post.created)}');
    }
    return Text(
        'Created: ${DateFormat('dd/MM/yyyy').format(widget.post.created)}');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            print('button pressed');
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditAPost(
                  post: widget.post,
                ),
              ),
            );
            setState(() {
              widget.post;
            });
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('content/images/icons/post.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.post.postTitle,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 1),
                  getDate(),
                ],
              ),
              SizedBox(width: 150),
              Icon(Icons.navigate_next)
            ],
          ),
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
