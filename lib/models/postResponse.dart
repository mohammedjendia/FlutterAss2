
import 'package:flutterass2/models/posts.dart';
import 'package:flutterass2/models/user.dart';

class PostResponse{
  User? user ;
  Posts? posts;

  PostResponse.fromJson(Map<String , dynamic> data){
    user = User.fromJson(data['user']);
    posts = Posts.fromJson(data['posts']);
  }
}