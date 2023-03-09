import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/dashboard/dashboard.dart';
import 'package:pebble_pocket_flutter/components/login/login.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/login': (context) => Login(),
      },
    ));
