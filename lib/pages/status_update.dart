import 'package:flutter/material.dart';

List<String> sampleUsernames = [
  'Ravi',
  'Chandan',
  'Ran vijay',
  'David',
  'Nikhil',
  'Sonu',
  'Kaushiki',
  'Suman',
  'Gollu',
];

List<String>sampleList = [
  '12:33 AM',
  '11:03 AM',
  '12:03 AM',
  '05:03 PM',
  'Yesterday',
  '12:53 AM',
  '9:03 PM',
  '12:03 AM',
  'Yesterday'
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
class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sampleUsernames.length, // Use the length of the usernames list
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // Disable scrolling for ListView
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 29,

                  ),
                ),
                // Main CircleAvatar
                CircleAvatar(
                  backgroundImage: NetworkImage(sampleImage[index]),
                  radius: 26, // Slightly smaller radius for the inner avatar
                ),
              ],
            ),
          ),
          title: Text(sampleUsernames[index], style: TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text(sampleList[index], style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black45)),
        );
      },
    );
  }
}
