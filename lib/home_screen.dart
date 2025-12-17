import 'package:flutter/material.dart';
import 'Widgets/bar_stack.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Home Screen'),centerTitle: true,),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(6),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15
            )
          ],
        ),
        child: BarStack()
      ),
      
    );
  }
}

 