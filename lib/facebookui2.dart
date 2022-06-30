
import 'package:flutter/material.dart';

class FacebookUiScreen2 extends StatelessWidget {
  const FacebookUiScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String x = 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg';
    String y= 'https://www.magltk.com/wp-content/uploads/2020/07/%D8%AA%D9%83%D8%B1%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%84%D9%85-%D8%A8%D8%B4%D8%AE%D8%B5-%D9%85%D8%B9%D9%8A%D9%86-%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%AA%D9%81%D9%83%D9%8A%D8%B1-%D9%81%D9%8A%D9%87-%E2%80%93-20-%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-1.jpg';

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Food'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(children: [
              CircleAvatar(

                radius: 18,
                backgroundImage: NetworkImage(y),
              ),
              SizedBox(width: 10,),
              Text('Mohammed Shafik', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Text('update his cover photo'),
              Spacer(),
              Icon(Icons.more_horiz),
            ],),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text('32 mins ago' , style: TextStyle(color: Colors.black54),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(x)
                      ,
                      fit: BoxFit.cover,
                    ),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 350,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(x)
                      ,
                      fit: BoxFit.cover,
                    ),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
