class Posts {
  String? content ;
  String? image ;
  String? nolikes;

  Posts.fromJson(Map<String , dynamic> data){
    content = data['content'];
    image = data['image'];
    nolikes = data['nolikes'];

  }
}