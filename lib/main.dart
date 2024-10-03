import 'package:flutter/material.dart';
import 'package:whatsapp/pages/dashboard/calls/call_screen.dart';
import 'package:whatsapp/pages/dashboard/dashboard_page.dart';
import 'package:whatsapp/pages/dashboard/select_contact/select_contact.dart';

import 'pages/dashboard/chats/more_option.dart';


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
      home: SelectContact(),
    );
  }
}
