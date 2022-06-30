
import 'package:flutter/material.dart';
import 'package:flutterass2/models/user.dart';

import 'models/posts.dart';

class PostWidget extends StatelessWidget {
  User user;
  Posts posts;

   PostWidget(this.user,this.posts);

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(children: [
            CircleAvatar(

              radius: 18,
              backgroundImage: NetworkImage(user.image??''),
            ),
            SizedBox(width: 10,),
            Text(user.name??'', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Text('update his cover photo'),
            Spacer(),
            Icon(Icons.more_horiz),
          ],),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                width: 350,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(posts.image??'')
                    ,
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: const[

              CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 15,
                  child: Icon(Icons.favorite, color: Colors.white,)),
              CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 15,
                  child: Icon(Icons.thumb_up , color: Colors.white,)),
              SizedBox(width: 20,),
              Text('400'),
              Spacer(),
              Text('122  Comments' , style: TextStyle(color: Colors.black54),),




            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 2,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                )
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child :Row(
                  children: [
                    Icon(Icons.thumb_up),
                    Text('Like'),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(width: 50,),
              Container(
                child :Row(
                  children: [
                    Icon(Icons.comment),
                    Text('Comment'),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
