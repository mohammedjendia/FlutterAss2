
import 'package:flutter/material.dart';

import 'models/posts.dart';

class StoryWidget extends StatelessWidget {

  Posts posts;
  StoryWidget(this.posts);


  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.all(10),
      child: Container(

        width: 100,
        height: 160,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: NetworkImage(posts.image??''),
            //AssetImage('assets/images/man.png',),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),


        ),
        child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(posts.image??''),
                    )
                  ],
                ),
                Spacer(),
                Text('Mohammed Jen', style: TextStyle(color: Colors.white, fontSize: 11.5),)
              ],
            )
        ),
      ),
    );
  }
}
