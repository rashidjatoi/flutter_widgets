import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CupertinoContextMenuWidget extends StatefulWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  State<CupertinoContextMenuWidget> createState() =>
      _CupertinoContextMenuWidgetState();
}

class _CupertinoContextMenuWidgetState
    extends State<CupertinoContextMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                child: Text('Action one'),
                onPressed: () {
                  Get.back();
                },
              ),
              CupertinoContextMenuAction(
                child: Text('Action two'),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
