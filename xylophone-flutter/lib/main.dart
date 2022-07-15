import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Color.fromARGB(255, 163, 99, 174), soundNumber: 1),
            buildKey(color: Color.fromARGB(255, 95, 159, 212), soundNumber: 2),
            buildKey(color: Color.fromARGB(255, 76, 175, 158), soundNumber: 3),
            buildKey(color: Color.fromARGB(255, 99, 170, 102), soundNumber: 4),
            buildKey(color: Color.fromARGB(255, 222, 207, 75), soundNumber: 5),
            buildKey(color: Color.fromARGB(255, 230, 150, 31), soundNumber: 6),
            buildKey(color: Color.fromARGB(255, 228, 96, 87), soundNumber: 7),
          ],
        )),
      ),
    );
  }
}






// Expanded(
//               child: ElevatedButton(
//                 onPressed: () {
//                   playSound(1);
//                 },t
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 163, 99, 174),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {
//                   playSound(2);
//                 },t
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 95, 159, 212),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {
//                   playSound(3);
//                 },t
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 76, 175, 158),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {
//                   playSound(4);
//                 },t
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 99, 170, 102),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {
//                   playSound(5);
//                 },t
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 222, 207, 75),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {
//                   playSound(6);
//                 },t
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 222, 207, 75),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {
//                   playSound(7);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 228, 96, 87),
//                 ),
//               ),
//             ),