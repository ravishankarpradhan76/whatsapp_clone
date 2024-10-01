import 'package:flutter/material.dart';
import 'package:whatsapp/pages/dashboard/calls/calls_page.dart';
import 'package:whatsapp/pages/dashboard/chats/chats_page.dart';
import 'package:whatsapp/pages/dashboard/communities/communities_page.dart';
import 'package:whatsapp/pages/dashboard/updates/updates_page.dart';
import 'package:whatsapp/utilities/app_colors.dart';
import 'package:whatsapp/utilities/app_sizes.dart';
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
            : AppStrings.calls),
        actions: _appBarActions[_currentIndex], // Icons set karna
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.mainColor,
        unselectedLabelStyle: const TextStyle(color: AppColors.mainColor),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: AppColors.mainColor,
            ),
            label: AppStrings.chats,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
              color: AppColors.mainColor,
            ),
            label: AppStrings.updates,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: AppColors.mainColor,
            ),
            label: AppStrings.communities,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: AppColors.mainColor,
            ),
            label: AppStrings.calls,
          ),
        ],
        showUnselectedLabels: true,
      ),
    );
  }
}
