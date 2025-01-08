import 'package:flutter/material.dart';

class LongPressDragableWidget extends StatefulWidget {
  const LongPressDragableWidget({super.key});

  @override
  State<LongPressDragableWidget> createState() =>
      _LongPressDragableWidgetState();
}

class _LongPressDragableWidgetState extends State<LongPressDragableWidget> {
  Offset _offset = const Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  left: _offset.dx,
                  top: _offset.dy,
                  child: LongPressDraggable(
                    feedback: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg',
                      height: 200,
                      color: Colors.orangeAccent,
                      colorBlendMode: BlendMode.colorBurn,
                    ),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg',
                      height: 200,
                    ),
                    onDragEnd: (details) {
                      setState(() {
                        double adjustment = MediaQuery.of(context).size.height -
                            constraints.maxHeight;

                        _offset = Offset(
                          details.offset.dx,
                          details.offset.dy - adjustment,
                        );
                      });
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
