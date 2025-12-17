import 'package:flutter/material.dart';
import 'bar_stack.dart';
import 'screen1.dart';
import 'secondScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screen = const [
    MyHomeScreen1(),
    Secondscreen(title: 'Dynamic Screen'),
    MyHomeScreen1(),
    MyHomeScreen1(),
    MyHomeScreen1(),
  ];

  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(6),
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 15),
          ],
        ),
        child: BarStack(onIndexChanged: updateIndex),
      ),
    );
  }
}


// class HomeScreen extends StatelessWidget{
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(title: Text('Home Screen'), centerTitle: true,),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.all(6),
//         width: double.infinity,
//         height: 70,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey,
//               blurRadius: 15
//             )
//           ],
//         ),
//         child: BarStack()
//       ),
      
//     );
//   }
// }

 