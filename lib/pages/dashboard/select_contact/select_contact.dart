import 'package:flutter/material.dart';

List<String> sampleName = [
  '+919693654565 (you)',
  'A Pradhan',
  'Abhishek Pal',
  'Abhishek Pradhan',
  'Chandan Pradhan',
  'Prakash Pradhan',
  'Pallavi Pradhan',
  'Kaushiki Dubey',
  'Dipu Dubey',
  'ankur Dubey',
  'Satyam Ray',
  'Kundan Kumar',
  'Kanhaiya Pradhan'
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
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbaiqCPaLjyR2_hMv5cRRIO3VAdsn0uN2j-g&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-7UlBEPogPlRsSxdRuYzA82H6s2Vklnn4sg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJaGXVgW_R8q1ImPgNG9qox0l7v8MYosxr6g&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjFCBcHkS5CvGsBCQLf49T28GUrbyOS2b8gg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLcgJVt5scftlAOHVsywM8MGi-y_ztOvbofg&s',
];
List<String> sampleMessage = [
  'Message yourself',
      'Available ',
      'At schhol',
      'Indian Army',
      'Jai shree ram',
      'At work',
      'Urgent calls only',
      'Judge me when you are perfect',
      'Busy',
      'Mere Mahadev',
      'Maa',
      'Daddy little girl...',
      'One mistake game over',
];

class SelectContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Contact',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Text(
                '229 contacts', // Corrected "contact" to "contacts"
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.group_add,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'New group',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 28),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_add_alt_1_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'New contact',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 90),
                IconButton(onPressed: () {}, icon: Icon(Icons.qr_code, size: 23)),
              ],
            ),
            SizedBox(height: 28),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.groups,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'New community',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 18),
            Text(
              'Contacts on WhatsApp',
              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
            ),
            ListView.builder(
              itemCount: sampleName.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Disable scrolling for ListView
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(sampleImage[index]),
                  ),
                  title: Text(
                    sampleName[index],
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    sampleMessage[index],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}