import 'package:flutter/material.dart';

class AleryDialogWidget extends StatelessWidget {
  const AleryDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog Widget')),
      body: Column(
        children: [
          Text('About List Tile Widget'),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop;
                      },
                      child: Text('Close'),
                    )
                  ],
                  title: Text('Flutter '),
                  contentPadding: EdgeInsets.all(20),
                  content: Text('This is a alert Dialog'),
                ),
              );
            },
            child: Text('Alert Dialog'),
          )
        ],
      ),
    );
  }
}
