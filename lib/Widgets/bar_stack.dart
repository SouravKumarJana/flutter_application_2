import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/home_screen.dart';
import 'bar_elememt.dart';
import 'screen1.dart';
import 'secondScreen.dart';
import 'text_style.dart';

class BarStack extends StatefulWidget {
  final ValueChanged<int> onIndexChanged;
  const BarStack({super.key, required this.onIndexChanged});

  @override
  State<BarStack> createState() => _BarStackState();
}

class _BarStackState extends State<BarStack> {
  int selectedIndex = 0;

  void _changeIndex(int index) {
    setState(() {
      selectedIndex = index; 
    });

    widget.onIndexChanged(index); 
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BarElememt(
          name: 'Home',
          icon: const Icon(Icons.home),
          textStyle: textStyle,
          callback: () => _changeIndex(0),
        ),
        BarElememt(
          name: 'Play',
          icon: const Icon(Icons.play_circle_fill),
          textStyle: textStyle,
          callback: () => _changeIndex(1),
        ),
        BarElememt(
          name: 'Add',
          icon: const Icon(Icons.add),
          textStyle: textStyle,
          callback: () => _changeIndex(2),
        ),
        BarElememt(
          name: 'Subscriptions',
          icon: const Icon(Icons.subscriptions),
          textStyle: textStyle,
          callback: () => _changeIndex(3),
        ),
        BarElememt(
          name: 'Shorts',
          icon: const Icon(Icons.video_call),
          textStyle: textStyle,
          callback: () => _changeIndex(4),
        ),
      ],
    );
  }
}
