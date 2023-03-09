import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/dashboard/dashboard.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
      },
    ));
