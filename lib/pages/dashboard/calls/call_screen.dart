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
              backgroundImage: NetworkImage('https://encrypted'
                  '-tbn0.gstatic.com/images?q=tbn:ANd9GcQLtJcTmO0H'
                  'rXUfekzgb3ZUTIFLGCzKlwMRWw&s'),
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
