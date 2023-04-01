import 'package:flutter/material.dart';

class AddTagsDialog extends StatefulWidget {
  const AddTagsDialog({super.key});

  @override
  State<AddTagsDialog> createState() => _AddTagsDialogState();
}

class _AddTagsDialogState extends State<AddTagsDialog> {
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
                SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                bottomRight: Radius.zero,
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          style: TextStyle(fontSize: 14.0)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.zero,
                            bottomLeft: Radius.zero,
                          ),
                        )),
                        elevation: MaterialStateProperty.all(0),
                        minimumSize: MaterialStateProperty.all(
                          Size(60, 56),
                        ),
                      ),
                      child: Text('Add'),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButtonTheme(
              data: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFFffffff),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(40, 40),
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
                  'Done',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
