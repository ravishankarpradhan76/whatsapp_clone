import 'package:flutter/material.dart';
import 'package:whatsapp/pages/dashboard/dashboard_page.dart';
import 'package:whatsapp/pages/dashboard/splash_screen/splash_screen.dart';

import 'pages/dashboard/calls/audio_call.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AudioCall(),
    );
  }
}
