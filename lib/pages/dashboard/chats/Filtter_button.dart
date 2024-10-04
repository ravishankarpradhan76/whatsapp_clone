import 'package:flutter/material.dart';

class FilterButtons extends StatefulWidget {
  @override
  _FilterButtonsState createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
  String _activeFilter = 'All';
  Widget _buildFilterButton(String title) {
    bool isActive = _activeFilter == title;
    return GestureDetector(
      onTap: () {
        setState(() {
          _activeFilter = title;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: isActive ? Colors.green : Colors.black12, // सक्रिय बटन का रंग
        ),
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: isActive ? Colors.white : Colors.black), // टेक्स्ट का रंग बदलें
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildFilterButton('All'),
        SizedBox(width: 8),
        _buildFilterButton('Unread'),
        SizedBox(width: 8),
        _buildFilterButton('Favorites'),
        SizedBox(width: 8),
        _buildFilterButton('Groups'),
      ],
    );
  }
}
