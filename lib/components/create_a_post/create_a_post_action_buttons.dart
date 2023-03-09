import 'package:flutter/material.dart';

class CreateAPostActionButtons extends StatefulWidget {
  const CreateAPostActionButtons({
    super.key,
  });

  @override
  State<CreateAPostActionButtons> createState() =>
      _CreateAPostActionButtonsState();
}

class _CreateAPostActionButtonsState extends State<CreateAPostActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButtonTheme(
          data: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF0087cd)),
              elevation: MaterialStateProperty.all(0.0),
              minimumSize: MaterialStateProperty.all(
                Size(200, 40),
              ),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Save to device'),
          ),
        ),
        ElevatedButtonTheme(
          data: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xFFffffff),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(200, 40),
              ),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {},
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
    );
  }
}
