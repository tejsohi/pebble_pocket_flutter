// import 'package:uuid/uuid.dart';

class Post {
  // Uuid id;
  String postTitle;
  String postContent;

  Post({required this.postTitle, required this.postContent});

  Post.fromJson(Map<String, dynamic> json)
      // : id = json['id'],
      : postTitle = json['postTitle'],
        postContent = json['postContent'];

  Map<String, dynamic> toJson() => {
        // 'id': id,
        'postTitle': postTitle,
        'postContent': postContent,
      };
}
