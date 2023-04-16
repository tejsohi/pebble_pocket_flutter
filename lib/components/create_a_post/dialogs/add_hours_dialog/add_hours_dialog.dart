import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pebble_pocket_flutter/components/create_a_post/models/hours.dart';

class AddHoursDialog extends StatefulWidget {
  AddHoursDialog({super.key});

  @override
  State<AddHoursDialog> createState() => _AddHoursDialogState();
}

class _AddHoursDialogState extends State<AddHoursDialog> {
  final Hours hoursModel;
  var hoursTextEditingController = TextEditingController();
  var minutesEditingController = TextEditingController();

  _AddHoursDialogState()
      : hoursModel = Hours(
          hours: '0',
          minutes: '0',
        );

  saveHours(String hours, String minutes) {
    hoursModel.hours = hours;
    hoursModel.minutes = minutes;

    Navigator.pop(context, hoursModel);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Add Hours',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Hours'),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    ),
                    Flexible(
                        child: TextField(
                      controller: hoursTextEditingController..text = '0',
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(
                        Color(0xFF0087cd),
                      ),
                    ),
                    child: Text('Clear'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Minutes'),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    ),
                    Flexible(
                      child: TextField(
                        onChanged: (value) => hoursModel.minutes = value,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(fontSize: 14.0),
                        controller: TextEditingController()..text = '0',
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(
                        Color(0xFF0087cd),
                      ),
                    ),
                    child: Text('Clear'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButtonTheme(
                  data: ElevatedButtonThemeData(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF0087cd)),
                      elevation: MaterialStateProperty.all(0.0),
                      minimumSize: MaterialStateProperty.all(
                        Size(10, 40),
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      saveHours(hoursTextEditingController.text,
                          minutesEditingController.text);
                    },
                    child: Text('Save'),
                  ),
                ),
                ElevatedButtonTheme(
                  data: ElevatedButtonThemeData(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFFffffff),
                      ),
                      minimumSize: MaterialStateProperty.all(
                        Size(10, 40),
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        elevation: 0,
                        side: BorderSide(color: Colors.grey)),
                    child: Text(
                      'Cancel',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
