import 'package:flutter/material.dart';

List<String> sampleUsernames = [
  'Ravi',
  'Chandu',
  'Ran vijay',
  'David',
  'Nikhil',
  'Sonu',
  'Kaushiki',
  'Suman',
  'Gollu',
];
List<String>sampleImage = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-7UlBEPogPlRsSxdRuYzA82H6s2Vklnn4sg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJaGXVgW_R8q1ImPgNG9qox0l7v8MYosxr6g&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjFCBcHkS5CvGsBCQLf49T28GUrbyOS2b8gg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLcgJVt5scftlAOHVsywM8MGi-y_ztOvbofg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShWxZ32gY0-b-p2RTZoXDwJe0uYGIHMjYFOw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjFCBcHkS5CvGsBCQLf49T28GUrbyOS2b8gg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlSd4rBD3TpplIVUYUj8zoGVkJgXzRObUmYQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjFCBcHkS5CvGsBCQLf49T28GUrbyOS2b8gg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbaiqCPaLjyR2_hMv5cRRIO3VAdsn0uN2j-g&s'
];

class CallList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sampleUsernames.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(sampleImage[index]),
              radius: 24,
            ),
            title: Text(sampleUsernames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black87),),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_made,
                  color: Colors.green,
                  size: 18,
                ),
                Text(
                  'Yesterday, 7:07 PM',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                ),
              ],
            ),
            trailing: Icon(Icons.call_outlined),
          );
        });
  }
}
