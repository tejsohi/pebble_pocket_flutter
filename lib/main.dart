import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/dashboard/dashboard.dart';
import 'package:pebble_pocket_flutter/theme/theme_contants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: lightTheme,
    darkTheme: darkTheme,
    initialRoute: '/',
    routes: {
      '/': (context) => Dashboard(),
    },
  ));
}
