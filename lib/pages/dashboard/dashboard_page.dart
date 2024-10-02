import 'package:flutter/material.dart';
import 'package:whatsapp/pages/dashboard/calls/calls_page.dart';
import 'package:whatsapp/pages/dashboard/chats/chats_page.dart';
import 'package:whatsapp/pages/dashboard/communities/communities_page.dart';
import 'package:whatsapp/pages/dashboard/updates/updates_page.dart';
import 'package:whatsapp/utilities/app_colors.dart';
import 'package:whatsapp/utilities/app_strings.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const ChatsPage(),
    const UpdatesPage(),
    const CommunitiesPage(),
    const CallsPage(),
  ];

  final List<List<Widget>> _appBarActions = [
    [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
    ], // Chats ke liye icons
    [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
    ], // Updates ke liye icons
    [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
    ], // Communities ke liye icons
    [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
    ], // Calls ke liye icons
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentIndex == 0
            ? AppStrings.appName
            : _currentIndex == 1
            ? AppStrings.updates
            : _currentIndex == 2
            ? AppStrings.communities
            : AppStrings.calls,
          style: TextStyle(
            color: _currentIndex == 0 ? Colors.green : Colors.black,
            fontWeight: _currentIndex == 0 ? FontWeight.w700 : FontWeight.normal, // केवल index 0 के लिए वज़न बदलें
          ),


        ),
        actions: _appBarActions[_currentIndex], // Icons set karna
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.red),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: _currentIndex == 0 ? AppColors.mainColor : Colors.grey, // सक्रिय टैब के लिए रंग
            ),
            label: AppStrings.chats,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
              color: _currentIndex == 1 ? AppColors.mainColor : Colors.grey,
            ),
            label: AppStrings.updates,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: _currentIndex == 2 ? AppColors.mainColor : Colors.grey,
            ),
            label: AppStrings.communities,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: _currentIndex == 3 ? AppColors.mainColor : Colors.grey,
            ),
            label: AppStrings.calls,
          ),
        ],
        showUnselectedLabels: true,
      ),

    );
  }
}
