import 'package:flutter/material.dart';

class CheckboxListtileWidget extends StatefulWidget {
  const CheckboxListtileWidget({super.key});

  @override
  State<CheckboxListtileWidget> createState() => _CheckboxListtileWidgetState();
}

class _CheckboxListtileWidgetState extends State<CheckboxListtileWidget> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          value: _isChecked,
          onChanged: (value) {
            setState(
              () {
                _isChecked = value;
              },
            );
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.white10,
          subtitle: Text('This is a subtitle'),
          title: Text('Check Box'),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
