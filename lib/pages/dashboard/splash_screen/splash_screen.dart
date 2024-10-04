import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
            'assets/images/whatsapp.png',
            height: 80,
            width: 80,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome to WhatsApp', // यहाँ टेक्स्ट लिखें
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
