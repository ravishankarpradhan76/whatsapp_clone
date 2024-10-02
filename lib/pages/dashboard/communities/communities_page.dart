import 'package:flutter/material.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black12,
                ),
                height: 48,
                width: 48,
                child: Icon(
                  Icons.groups,
                  color: Colors.white,
                  size: 38,
                ),
              ),
              Positioned(
                left: 24,
                top: 24,
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
                    radius: 11,
                    child: Icon(
                      Icons.add,
                      color: Colors.white70,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'New community',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ));
  }
}
