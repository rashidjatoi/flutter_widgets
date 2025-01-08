import 'package:flutter/material.dart';

class ReorderListviewWidget extends StatefulWidget {
  const ReorderListviewWidget({super.key});

  @override
  State<ReorderListviewWidget> createState() => _ReorderListviewWidgetState();
}

class _ReorderListviewWidgetState extends State<ReorderListviewWidget> {
  final List<int> items = List<int>.generate(30, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reorder ListView'),
      ),
      body: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
          children: List.generate(
            items.length,
            (index) => ListTile(
              key: Key('$index'),
              tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
              title: Text('Items ${items[index]}'),
              trailing: Icon(Icons.drag_handle_sharp),
            ),
          )),
    );
  }
}
