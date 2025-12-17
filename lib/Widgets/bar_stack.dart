import 'package:flutter/material.dart';
import 'bar_elememt.dart';
import 'screen1.dart';
import 'secondScreen.dart';
import 'text_style.dart';
class BarStack extends StatelessWidget{
  const BarStack({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BarElememt(
          name: 'Home', 
          icon: Icon(Icons.home), 
          textStyle: textStyle, 
          callback: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHomeScreen1(),
            ),
          );
        }
      ),
      BarElememt(
          name: 'Play', 
          icon: Icon(Icons.play_circle_fill), 
          textStyle: textStyle, 
          callback: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Secondscreen(title: 'Second Screen',),
            ),
          );
        }
      ),
      BarElememt(
          name: 'add', 
          icon: Icon(Icons.add), 
          textStyle: textStyle, 
          callback: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHomeScreen1(),
            ),
          );
        }
      ),
      BarElememt(
          name: 'subscriptions', 
          icon: Icon(Icons.subscriptions), 
          textStyle: textStyle, 
          callback: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHomeScreen1(),
            ),
          );
        }
      ),
      BarElememt(
          name: 'shorts', 
          icon: Icon(Icons.video_call), 
          textStyle: textStyle, 
          callback: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHomeScreen1(),
            ),
          );
        }
      ),

      ],
    );
  }
}