import 'package:flutter/material.dart';
import 'package:localstore/localstore.dart';

//ignore: must_be_immutable
class MyAssets extends StatefulWidget {
  MyAssets({super.key});

  @override
  State<MyAssets> createState() => _MyAssetsState();
}

class _MyAssetsState extends State<MyAssets> {
  List<Widget> myAssets;

  _MyAssetsState() : myAssets = <Text>[];

  Future<void> loadData() async {
    final db = Localstore.instance;
    final items = await db.collection('post').get() as Map<String, dynamic>;
    print(items.entries.first);
    myAssets = items.entries.map((e) => Text(e.value.toString())).toList();
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Assets'),
        backgroundColor: Color(0xFF474d55),
        actions: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  foreground: Paint()..color = Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            child: Text('Send all'),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Text(
              'Assets stored on this device',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
          Row(
            children: myAssets,
          )
        ],
      ),
    );
  }
}
