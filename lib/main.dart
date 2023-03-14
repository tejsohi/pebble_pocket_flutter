import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/dashboard/dashboard.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
      },
    ));
