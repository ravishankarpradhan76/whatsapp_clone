import 'package:flutter/material.dart';

class AudioCall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://i.pinimg.com/originals/58/c3/33/58c33377dfcbb3022493dec49d098b02.jpg'), // या Image.asset('assets/images/your-image.png')
              fit: BoxFit.cover, // छवि को कवर करने के लिए
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/58/c3/33/58c33377dfcbb3022493dec49d098b02.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildCircleAvatar(Icons.more_horiz),
            _buildCircleAvatar(Icons.videocam_rounded),
            _buildCircleAvatar(Icons.phone_bluetooth_speaker_sharp),
            _buildCircleAvatar(Icons.mic_off),
            _buildCircleAvatar(Icons.call_end, Colors.red[700]),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatar(IconData icon, [Color? backgroundColor]) {
    return CircleAvatar(
        backgroundColor: backgroundColor ?? Colors.blueGrey[700],
        child: Icon(icon, color: Colors.white, size: 24), // आइकन का साइज सेट करें
    );
  }
}
