import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/dialogs/add_hours_dialog/add_hours_dialog.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/dialogs/add_points_dialog/add_points_dialog.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/dialogs/add_tags_dialog/add_tags_dialog.dart';


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

        switch (_selectedIndex) {
          case 0:
            Navigator.of(
              context,
            ).push(
              PageRouteBuilder(
                  pageBuilder: (context, _, __) => AddHoursDialog(),
                  opaque: false),
            );
            break;
          case 1:
            Navigator.of(
              context,
            ).push(
              PageRouteBuilder(
                  pageBuilder: (context, _, __) => AddPointsDialog(),
                  opaque: false),
            );
            break;
          case 2:
            Navigator.of(
              context,
            ).push(
              PageRouteBuilder(
                  pageBuilder: (context, _, __) => AddTagsDialog(),
                  opaque: false),
            );
            break;
          default:
        }
      },
    );
  }
}
