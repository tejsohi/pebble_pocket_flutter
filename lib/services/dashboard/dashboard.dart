import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/services/dashboard_cards/profile_card.dart';
import 'package:pebble_pocket_flutter/services/dashboard_cards/whats_happening_card.dart';
import 'package:pebble_pocket_flutter/services/sidebar/sidebar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF5f67ab),
          title: Text('PebblePocket'),
        ),
        body: Column(
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => LoginWebView()));
            //   },
            //   child: Text('Login'),
            // ),
            ProfileCard(),
            WhatsHappening(),
          ],
        ),
        backgroundColor: Color(0xFFf7f7f7),
        drawer: SideBar());
  }
}
