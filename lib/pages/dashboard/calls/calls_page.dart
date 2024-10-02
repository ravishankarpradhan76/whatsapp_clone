import 'package:flutter/material.dart';

import 'call_screen.dart';


class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Favorites',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87),),
            SizedBox(height: 21,),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: Icon(Icons.favorite,color: Colors.white,size: 20,),
                ),
                SizedBox(width: 20,),
                Text('Add favorite',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 19,),
            Text('Recent',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            SizedBox(height: 11,),
            CallList(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_call,color: Colors.white,),
        backgroundColor: Colors.green,
      ),
    );
  }
}
