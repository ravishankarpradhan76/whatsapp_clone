import 'package:flutter/material.dart';

List<String>sampleUsernames =[
  'Chandu',
  'Ravi',
  'Somya',
  'Kamal',
  'Sonu',
  'Prakash',
  'Sambhu',
  'Laxman',
  'Mohan'
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

List<String> sampleMessages = [
  'Hey, how are you?',
  'Let’s meet tomorrow.',
  'Did you finish the project?',
  'Check out this new song!',
  'Happy Birthday!',
  'Can you send me the files?',
  'Let’s grab lunch.',
  'I’m running late.',
  'What’s your plan for the weekend?'
];
class ChatScreen extends StatelessWidget {
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
            radius: 23,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(sampleUsernames[index], style: TextStyle(fontWeight: FontWeight.w600),),
              Text(sampleList[index],style: TextStyle(fontSize: 11),),
            ],
          ),
          subtitle: Text(sampleMessages[index]),
        );
      },
    );
  }
}
