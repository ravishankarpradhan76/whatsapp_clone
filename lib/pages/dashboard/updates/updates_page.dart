import 'package:flutter/material.dart';

import '../../status_update.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Status',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 64,
                  height: 60,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 28,
                        backgroundImage: NetworkImage(
                            'https://media.licdn.com/dms/image/C5603AQHSAAC_aXAI9w'
                            '/profile-displayphoto-shrink_200_200/0/1661685168318?e='
                            '2147483647&v=beta&t=uWQk20bvIywx0S6tskp-2EUFqvesKoVzgDd3DuiOohY'),
                      ),
                      Positioned(
                        left: 35,
                        top: 34,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white70, // Border ka color
                              width: 2, // Border ki width
                            ),
                            shape: BoxShape.circle, // Circle shape ke liye
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 12,
                            child: Icon(
                              Icons.add,
                              color: Colors.white70,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My status',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87)),
                    Text('Tap to add status update',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Recent updates',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
            SizedBox(height: 10),
            StatusScreen(),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80, // Pehle button ki position
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Edit action
              },
              child: Icon(Icons.edit),
              backgroundColor: Colors.white70,
            ),
          ),
          Positioned(
            bottom: 16, // Dusre button ki position
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Camera action
              },
              child: Icon(Icons.camera_alt, color: Colors.white),
              backgroundColor: Colors.green[500],
            ),
          ),
        ],
      ),
    );
  }
}
