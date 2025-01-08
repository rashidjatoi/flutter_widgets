import 'package:flutter/material.dart';

class AboutListtileWidget extends StatelessWidget {
  const AboutListtileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About List Tile Widget')),
      body: Column(
        children: [
          Text(
              'This widget is used to show all the information about your app'),
          Text('About List Tile Widget'),
          AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationLegalese: 'Legalese',
            applicationName: 'Flutter App',
            applicationVersion: 'version 1.0.0',
            aboutBoxChildren: [
              Text('This is text created in flutter'),
            ],
          ),
        ],
      ),
    );
  }
}
