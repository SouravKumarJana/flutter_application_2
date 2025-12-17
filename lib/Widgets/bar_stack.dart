import 'package:flutter/material.dart';
import 'bar_elememt.dart';
import 'text_style.dart';

class BarStack extends StatelessWidget {
  final Function(int) onIndexChanged;

  const BarStack({super.key, required this.onIndexChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BarElememt(
          name: 'Home',
          icon: const Icon(Icons.home),
          textStyle: textStyle,
          callback: () => onIndexChanged(0),
        ),
        BarElememt(
          name: 'Play',
          icon: const Icon(Icons.play_circle_fill),
          textStyle: textStyle,
          callback: () => onIndexChanged(1),
        ),
        BarElememt(
          name: 'Add',
          icon: const Icon(Icons.add),
          textStyle: textStyle,
          callback: () => onIndexChanged(2),
        ),
        BarElememt(
          name: 'Subscriptions',
          icon: const Icon(Icons.subscriptions),
          textStyle: textStyle,
          callback: () => onIndexChanged(3),
        ),
        BarElememt(
          name: 'Shorts',
          icon: const Icon(Icons.video_call),
          textStyle: textStyle,
          callback: () => onIndexChanged(4),
        ),
      ],
    );
  }
}
