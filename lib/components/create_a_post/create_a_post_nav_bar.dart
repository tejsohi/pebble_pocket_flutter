import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/dialogs/add_hours_dialog.dart';

class CreateAPostNavBar extends StatefulWidget {
  @override
  State<CreateAPostNavBar> createState() => _CreateAPostNavBarState();
}

class _CreateAPostNavBarState extends State<CreateAPostNavBar> {
  int _selectedIndex = -1;

  // switch(_selectedIndex) {
  //   case 0:

  // }

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

        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => AddHoursDialog()));
        Navigator.of(context).push(
          PageRouteBuilder(
              pageBuilder: (context, _, __) => AddHoursDialog(), opaque: false),
        );
      },
    );
  }
}
