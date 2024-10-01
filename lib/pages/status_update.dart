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
  'soya',
  'Payal',
  'Leo',
  'Mia',
  'Nina',
  'Oscar',
  'Paul',
  'Quincy',
  'Rachel',
  'Satya',
  'Tina',
  'Uma',
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
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7lTn0tcezy4jtea3P7BupI1LhyUTXDegdSA&s',
                  ),
                  radius: 26, // Slightly smaller radius for the inner avatar
                ),
              ],
            ),
          ),
          title: Text(sampleUsernames[index], style: TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text('12:13 AM', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black45)),
        );
      },
    );
  }
}
