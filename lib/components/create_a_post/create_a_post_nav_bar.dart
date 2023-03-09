import 'package:flutter/material.dart';

class CreateAPostNavBar extends StatefulWidget {
  @override
  State<CreateAPostNavBar> createState() => _CreateAPostNavBarState();
}

class _CreateAPostNavBarState extends State<CreateAPostNavBar> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color(0xFF474d55),
        unselectedItemColor: Colors.white,
        selectedItemColor: (_selectedIndex != -1) ? Colors.grey : Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hourglass_empty_outlined,
            ),
            label: 'Add hours',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.track_changes_outlined,
            ),
            label: 'Add points',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sell,
            ),
            label: 'Add points',
          )
        ],
        currentIndex: (_selectedIndex != -1) ? _selectedIndex : 0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      );
  }
}