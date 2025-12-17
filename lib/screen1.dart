import 'package:flutter/material.dart';

class MyHomeScreen1 extends StatelessWidget{
  const MyHomeScreen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text('First Screen'), centerTitle: true ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 127, 224, 231),
              Color.fromARGB(255, 37, 174, 195),
            ],
          ),
        ),
        child: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),

    );
  }
}
