import 'package:flutter/material.dart';

import '../../new_chat.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(21),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.transparent,
                  hintText: 'Ask Meta AI or Search',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                _buildFilterButton('All', Colors.green[100]!),
                SizedBox(
                  width: 8,
                ),
                _buildFilterButton('Unread', Colors.black12),
                SizedBox(
                  width: 8,
                ),
                _buildFilterButton('Favorites', Colors.black12),
                SizedBox(
                  width: 8,
                ),
                _buildFilterButton('Groups', Colors.black12),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // Here, you can add more widgets that may cause overflow
            ChatScreen(), // Your ChatScreen widget
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_box_rounded,color: Colors.white,),
        backgroundColor:
            Colors.green,
      ),
    );
  }

  Widget _buildFilterButton(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color,
      ),
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
