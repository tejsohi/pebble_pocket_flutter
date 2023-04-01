import 'dart:convert';

Post postModelFromJson(String str) => Post.fromJson(jsonDecode(str));

postModelToJson(List<Post> posts) => jsonEncode(posts);

class Post {
  String id;
  String postTitle;
  String postContent;
  String mainType;
  DateTime created;

  Post({
    required this.id,
    required this.postTitle,
    required this.postContent,
    required this.mainType,
    required this.created,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json['id'],
        postTitle: json['postTitle'],
        postContent: json['postContent'],
        mainType: json['mainType'],
        created: DateTime.tryParse(json['created']) as DateTime,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'postTitle': postTitle,
        'postContent': postContent,
        'mainTpye': mainType,
        'created': created,
      };

  static Map<String, dynamic> toMap(Post post) => {
        'id': post.id,
        'postTitle': post.postTitle,
        'postContent': post.postContent,
        'mainType': post.mainType,
        'created': post.created.toString(),
      };

  static String encode(List<Post> posts) => json.encode(
        posts.map<Map<String, dynamic>>((post) => Post.toMap(post)).toList(),
      );

  static List<Post> decode(String posts) =>
      (json.decode(posts) as List<dynamic>)
          .map<Post>((item) => Post.fromJson(item))
          .toList();
}
