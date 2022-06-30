
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterass2/dummy_data.dart';
import 'package:flutterass2/post_widget.dart';
import 'package:flutterass2/story_widget.dart';

class FaceBookFeed extends StatelessWidget {
  const FaceBookFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('O'),
              ),
                accountName:Text('Mohammed jendia') ,
                accountEmail: Text('mhmed@gmail.com')),
                 ListTile(
                   leading: Icon(Icons.home),
                   trailing: Icon(Icons.arrow_forward_ios),
                   subtitle: Text('Go to Home'),
                   title: Text('Home'),
                 ),
          ],
        ),
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                    child: Row(
                      children: const[
                        Text('Stories' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('See Archive', style: TextStyle(fontSize: 15 ),),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: posts.length ,
                        itemBuilder: (context , index) {
                          if (index == 0){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                width: 100,
                                height: 160,
                                decoration: BoxDecoration(
                                  image:  DecorationImage(
                                    image: NetworkImage('https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg'),
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
                                                backgroundColor: Colors.white,
                                                child: Icon(Icons.add)),
                                          ],
                                        ),
                                        Spacer(),
                                        Text('Add your Story', style: TextStyle(color: Colors.white, fontSize: 12.5),)
                                      ],
                                    )
                                ),
                              ),
                            );
                          }
                          return StoryWidget(posts[index].posts!);
                        }

                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: posts.length ,
                      itemBuilder: (context , index) {
                      return PostWidget(posts[index].user!, posts[index].posts!);
                    }

                  ),
                ],
              ),
            ],
          ),
        ),
      );

  }
}
