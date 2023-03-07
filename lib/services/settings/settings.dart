import 'package:flutter/material.dart';

import '../switch_toggle/switch_toggle.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0.00),
            ),
            child: Text('Account details'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0.00),
            ),
            child: Text('View sent assets'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0.00),
            ),
            child: Text('Language'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(0.00),
                ),
                child: Text('Account details'),
              ),
              SwitchToggle(),
            ],
          )
        ],
      ),
    );
  }
}
