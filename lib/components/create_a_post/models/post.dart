import 'dart:convert';
import 'package:pebble_pocket_flutter/components/create_a_post/models/hours.dart';

class Post {
  String id;
  String postTitle;
  String postContent;
  String mainType;
  DateTime created;
  Hours hours;

  Post({
    required this.id,
    required this.postTitle,
    required this.postContent,
    required this.mainType,
    required this.created,
    required this.hours,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json['id'],
        postTitle: json['postTitle'],
        postContent: json['postContent'],
        mainType: json['mainType'],
        created: DateTime.tryParse(json['created']) as DateTime,
        hours: Hours.fromJson(json['hours']),
      );

  static Map<String, dynamic> toMap(Post post) => {
        'id': post.id,
        'postTitle': post.postTitle,
        'postContent': post.postContent,
        'mainType': post.mainType,
        'created': post.created.toString(),
        'hours': post.hours.toJson(),
      };

  static String encode(List<Post> posts) => json.encode(
        posts.map<Map<String, dynamic>>((post) => Post.toMap(post)).toList(),
      );

  static List<Post> decode(String posts) =>
      (json.decode(posts) as List<dynamic>)
          .map<Post>((item) => Post.fromJson(item))
          .toList();
}
