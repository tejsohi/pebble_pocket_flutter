import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/services/dashboard/dashboard.dart';
import 'package:pebble_pocket_flutter/services/login/login.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/login': (context) => Login(),
      },
    ));
