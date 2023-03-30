import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('content/images/dashboard/profile.avif'),
                  radius: 80,
                ),
              ),
              SizedBox(height: 10),
              Divider(
                height: 0,
                thickness: 0.6,
                indent: 40,
                endIndent: 40,
                color: Colors.grey,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Assets'),
                    VerticalDivider(
                      thickness: 0.6,
                      indent: 5,
                      endIndent: 5,
                      color: Colors.grey,
                    ),
                    Text('Resources'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
