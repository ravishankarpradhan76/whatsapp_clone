import 'package:flutter/material.dart';


class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Favorites',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 19,
            child: Icon(Icons.heart_broken,color: Colors.white,size: 12,),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_call),
        backgroundColor: Colors.green,
      ),
    );
  }
}
