import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade800,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeNumbers() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeNumbers();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeNumbers();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.redAccent,
              side: BorderSide(color: Colors.white38, width: 2),
            ),
            onPressed: () {
              changeNumbers();
            },
            child: Text(
              'CLICK HERE!',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Pacifico',
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   int LeftDiceNumber = 5;
//   Widget build(BuildContext context) {
//     LeftDiceNumber = 2;
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Left button clicked!');
//               },
//               child: Image.asset('images/dice$LeftDiceNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Right button clicked!');
//               },
//               child: Image.asset('images/dice2.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Image.asset(
//   'images/dice1.png',
//   scale: 5.0,
// ),
