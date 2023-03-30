import 'package:flutter/material.dart';
import 'package:pebble_pocket_flutter/components/dashboard_cards/profile_card.dart';
import 'package:pebble_pocket_flutter/components/dashboard_cards/whats_happening_card.dart';
import 'package:pebble_pocket_flutter/components/sidebar/sidebar.dart';
import 'package:pebble_pocket_flutter/components/dashboard_cards/to_do/to_do.dart';
import 'package:pebble_pocket_flutter/theme/theme_manager.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ThemeManager themeManager = ThemeManager();

  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF474d55),
          title: Text('PebblePocket'),
        ),
        body: ListView(
          children: [
            ProfileCard(),
            WhatsHappening(),
            ToDo(),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
        drawer: SideBar());
  }
}
