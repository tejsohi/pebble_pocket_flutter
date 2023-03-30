import 'package:flutter/material.dart';

class WhatsHappening extends StatefulWidget {
  const WhatsHappening({super.key});

  @override
  State<WhatsHappening> createState() => _WhatsHappeningState();
}

class _WhatsHappeningState extends State<WhatsHappening> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.campaign_sharp),
            Center(
              child: Text('Things you need to know'),
            ),
            SizedBox(height: 20.0),
            ExpansionTile(
              title: Text('Your submission was accepted'),
              subtitle: Text('Asset: My Asset'),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: ListTile(
                    title: Text(
                        'Your submission My Asset to My Workspace on ATLAS has been accepted at this time: 1st March 2023'),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('An Asset was shared with you'),
              subtitle: Text('Asset: My Asset '),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: ListTile(
                    title: Text(
                        'Your submission My Asset to My Workspace on ATLAS has been accepted at this time: 1st March 2023'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
