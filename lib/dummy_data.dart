
import 'dart:math';

import 'package:flutterass2/models/postResponse.dart';

List<Map<String , dynamic>> postsResponse = [
{
  'user' :{
    'name' : 'hussam' ,
    'image' : 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',

},
    'posts':{
      'content' : "Mohammed jendia Shred new post",
      'image' :"https://www.magltk.com/wp-content/uploads/2020/07/%D8%AA%D9%83%D8%B1%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%84%D9%85-%D8%A8%D8%B4%D8%AE%D8%B5-%D9%85%D8%B9%D9%8A%D9%86-%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%AA%D9%81%D9%83%D9%8A%D8%B1-%D9%81%D9%8A%D9%87-%E2%80%93-20-%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-1.jpg",
      'noflikes' : 20 ,
}
},
{
'user' :{
'name' : 'hussam' ,
'image' : 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',

},
'posts':{
'content' : "Mohammed jendia Shred new post",
'image' :"https://www.magltk.com/wp-content/uploads/2020/07/%D8%AA%D9%83%D8%B1%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%84%D9%85-%D8%A8%D8%B4%D8%AE%D8%B5-%D9%85%D8%B9%D9%8A%D9%86-%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%AA%D9%81%D9%83%D9%8A%D8%B1-%D9%81%D9%8A%D9%87-%E2%80%93-20-%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-1.jpg",
'noflikes' : 20 ,
}
},
{
'user' :{
'name' : 'hussam' ,
'image' : 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',

},
'posts':{
'content' : "Mohammed jendia Shred new post",
'image' :"https://www.magltk.com/wp-content/uploads/2020/07/%D8%AA%D9%83%D8%B1%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%84%D9%85-%D8%A8%D8%B4%D8%AE%D8%B5-%D9%85%D8%B9%D9%8A%D9%86-%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%AA%D9%81%D9%83%D9%8A%D8%B1-%D9%81%D9%8A%D9%87-%E2%80%93-20-%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-1.jpg",
'noflikes' : 20 ,
}
},
{
'user' :{
'name' : 'hussam' ,
'image' : 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',

},
'posts':{
'content' : "Mohammed jendia Shred new post",
'image' :"https://www.magltk.com/wp-content/uploads/2020/07/%D8%AA%D9%83%D8%B1%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%84%D9%85-%D8%A8%D8%B4%D8%AE%D8%B5-%D9%85%D8%B9%D9%8A%D9%86-%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%AA%D9%81%D9%83%D9%8A%D8%B1-%D9%81%D9%8A%D9%87-%E2%80%93-20-%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-1.jpg",
'noflikes' : 20 ,
}
},
{
'user' :{
'name' : 'hussam' ,
'image' : 'https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg',

},
'posts':{
'content' : "Mohammed jendia Shred new post",
'image' :"https://www.magltk.com/wp-content/uploads/2020/07/%D8%AA%D9%83%D8%B1%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%84%D9%85-%D8%A8%D8%B4%D8%AE%D8%B5-%D9%85%D8%B9%D9%8A%D9%86-%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%AA%D9%81%D9%83%D9%8A%D8%B1-%D9%81%D9%8A%D9%87-%E2%80%93-20-%D8%AA%D9%81%D8%B3%D9%8A%D8%B1-1.jpg",
'noflikes' : 20 ,
}
},
];

  List<PostResponse> posts = postsResponse.map((e) => PostResponse.fromJson(e)).toList();

