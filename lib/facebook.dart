
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterass2/post_widget.dart';

import 'dummy_data.dart';
import 'dummy_data.dart';
import 'dummy_data.dart';

class FaceBookScreen extends StatelessWidget {
  const FaceBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String x = 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg';
    String y= 'https://www.magltk.com/wp-content/uploads/2020/07/%D8%AA%D9%83%D8%B1%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%84%D9%85-%D8%A8%D8%B4%D8%AE%D8%B5-%D9%85%D8%B9%D9%8A%D9%86-%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%AA%D9%81%D9%83%D9%8A%D8%B1-%D9%81%D9%8A%D9%87-%E2%80%93-20-%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-1.jpg';

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt),
        actions: [
          TextFormField(
            decoration:const InputDecoration(
              prefixIcon: Icon(Icons.search , color: Colors.white38,),
           labelText: 'jddnjhsh',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const[
                  Text('Stories' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text('See Archive', style: TextStyle(fontSize: 15 ),),
                  Icon(Icons.navigate_next),
                ],
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      
                      width: 100,
                      height: 160,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                          image: NetworkImage(x),
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
                    SizedBox(width: 10,),
                    Container(

                      width: 100,
                      height: 160,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                          image: NetworkImage(x),
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
                                    backgroundImage: NetworkImage(y),
                                  )
                                ],
                              ),
                              Spacer(),
                              Text('Mohammed Jen', style: TextStyle(color: Colors.white, fontSize: 11.5),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(

                      width: 100,
                      height: 160,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                          image: NetworkImage(x),
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
                                    backgroundImage: NetworkImage(y),
                                  )
                                ],
                              ),
                              Spacer(),
                              Text('Mohammed Jen', style: TextStyle(color: Colors.white, fontSize: 11.5),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(

                      width: 100,
                      height: 160,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                          image: NetworkImage(x),
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
                                    backgroundImage: NetworkImage(y),
                                  )
                                ],
                              ),
                              Spacer(),
                              Text('Mohammed Jen', style: TextStyle(color: Colors.white, fontSize: 11.5),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(width: 10,),


                ],),
              ),
              SizedBox(height: 30,),

              ...posts.map((e) => PostWidget(e.user!, e.posts!)).toList(),


            ],
          ),
        ),
      ),
    );
  }
}
