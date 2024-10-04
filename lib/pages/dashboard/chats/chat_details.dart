import 'package:flutter/material.dart';

List<String> sampleUsernames = [
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
List<String> sampleImage = [
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

class ChatDetailScreen extends StatelessWidget {
  final String username;

  ChatDetailScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(9.0), // Padding जोड़ें
          child: CircleAvatar(
            backgroundColor: Colors.black26,
            child: Icon(Icons.person, size: 29, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined,size: 30,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        title: Text('$username',style: TextStyle(fontSize: 18),),
      ),
      body: Center(
        child: Text('Chat interface for $username will be here'),
      ),
    );
  }
}
