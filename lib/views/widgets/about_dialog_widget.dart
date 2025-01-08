import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Dialog Widget')),
      body: Column(
        children: [
          Text(
              'This widget is used to show all the information about your app'),
          Text('AboutDialog'),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: 'Legalese',
                    applicationName: 'Flutter App',
                    applicationVersion: 'version 1.0.0',
                    children: [
                      Text('This is a text created by Flutter'),
                    ],
                  );
                },
              );
            },
            child: Text('Show About Dialog'),
          ),
        ],
      ),
    );
  }
}
