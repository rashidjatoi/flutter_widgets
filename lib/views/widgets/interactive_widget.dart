import 'package:flutter/material.dart';

class InteractiveWidget extends StatefulWidget {
  const InteractiveWidget({super.key});

  @override
  State<InteractiveWidget> createState() => _InteractiveWidgetState();
}

class _InteractiveWidgetState extends State<InteractiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('Interactive Widget'),
      ),
      body: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(double.infinity),
          child: Scaffold(
            appBar: AppBar(
              title: Text('Other Widget'),
            ),
          )),
    );
  }
}
