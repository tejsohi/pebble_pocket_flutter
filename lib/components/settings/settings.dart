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
        backgroundColor: Color(0xFF474d55),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0.00),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor),
              foregroundColor:
                  MaterialStateProperty.all(Theme.of(context).dividerColor),
            ),
            child: Text('Account details'),
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0.00),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor),
              foregroundColor:
                  MaterialStateProperty.all(Theme.of(context).dividerColor),
            ),
            child: Text('View sent assets'),
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0.00),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor),
              foregroundColor:
                  MaterialStateProperty.all(Theme.of(context).dividerColor),
            ),
            child: Text('Language'),
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Only send large assets over Wi-Fi'),
              ),
              SwitchToggle(),
            ],
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Only download tags and custom forms over Wifi'),
              ),
              SwitchToggle(),
            ],
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Email me a confirmation when sending assets'),
              ),
              SwitchToggle(),
            ],
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Add sent assets to my PebblePad digest'),
              ),
              SwitchToggle(),
            ],
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ask me before opening Pebble+'),
              ),
              SwitchToggle(),
            ],
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0.00),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).primaryColor),
              foregroundColor:
                  MaterialStateProperty.all(Theme.of(context).dividerColor),
            ),
            child: Text('Help with PebblePocket'),
          ),
          Divider(
            height: 0,
            thickness: 0.6,
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
