import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,  // For demonstration purposes
      shrinkWrap: true,  // Prevents ListView from expanding indefinitely
      physics: NeverScrollableScrollPhysics(), // Disable scrolling for ListView
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7lTn0tcezy4jtea3P7BupI1LhyUTXDegdSA&s',  // Replace with your image URL
            ),
            radius: 23,  // Adjust radius as needed
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('User $index',style: TextStyle(fontWeight: FontWeight.w600),),
              Text('12:00 PM',style: TextStyle(fontSize: 11),),  // Time next to the title
            ],
          ),
          subtitle: Text('Last message in chat $index'),
        );
      },
    );
  }
}
