// import 'dart:math';
// import 'package:flutter/material.dart';
//
// void main()
// {
//   runApp(MaterialApp(home: first(),));
// }
//
// class first extends StatefulWidget {
//   const first({Key? key}) : super(key: key);
//
//   @override
//   State<first> createState() => _firstState();
// }
//
// class _firstState extends State<first> {
//   List<String> l = List.filled(9, "");
//   // ValueNotifier<List> l = ValueNotifier(List.filled(9, ""));
//   // ValueNotifier<String> p1 = ValueNotifier("X");
//   // ValueNotifier<String> p2 = ValueNotifier("O");
//   String p1 = "X";
//   String p2 = "O";
//   int cnt = 0;
//   // ValueNotifier<int> cnt = ValueNotifier(0);
//   // ValueNotifier<String> msg = ValueNotifier("GAME IS RUNNING");
//   // ValueNotifier<int> Win = ValueNotifier(0);
//
//   // int cnt = 0;
//   String msg = "GAME IS RUNNING";
//   int Win=0;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tic_Tac_Toe"),centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Expanded(child: Row(
//             children: [
//               Expanded(child: InkWell(
//                 onTap: () {
//
//                   cnt;
//                   Win;
//                   l = List.filled(9, "");
//                   msg;
//                   setState(() {
//                     cnt = 0;
//                     Win=0;
//                     l = List.filled(9, "");
//                     msg = "GAME IS RUNNING";
//                   });
//                 },
//                 child: Container(
//                   color: Colors.black,
//                   margin: EdgeInsets.only(
//                       top: 10, bottom: 10, left: 70, right: 100),
//                   alignment: Alignment.center,
//                   child: Text("RESET",style: TextStyle(color: Colors.white)),
//                 ),
//               ))
//             ],
//           )),
//           Expanded(child: Container(
//             color: Colors.teal,
//             margin: EdgeInsets.only(top: 10, bottom: 10, left: 70, right: 100),
//             alignment: Alignment.center,
//             child: Text(msg),
//           ),),
//           Expanded(
//               flex: 3,
//               child: Row(
//                 children: [
//                   abc(0),
//                   abc(1),
//                   abc(2),
//                 ],
//               )),
//           Expanded(
//               flex: 3,
//               child: Row(
//                 children: [
//                   abc(3),
//                   abc(4),
//                   abc(5),
//                 ],
//               )),
//           Expanded(
//               flex: 3,
//               child: Row(
//                 children: [
//                   abc(6),
//                   abc(7),
//                   abc(8),
//                 ],
//               ))
//         ],
//       ),
//     );
//   }
//
//   Widget abc(int i) {
//     return
//       Expanded
//         (child: InkWell(
//           onTap: () {
//             if(l[i]=="" && Win==0)
//             {
//
//               l[i]=p1;
//               checkWin();
//               if(Win==0 && cnt<4)
//               {
//                 while(true)
//                 {
//
//                   int no=Random().nextInt(9);
//                   if(l[no]=="")
//                   {
//                     print(l);
//                     l[no]=p2;
//                     checkWin();
//                     break;
//                   }
//                 }
//               }
//             }
//             ValueListenableBuilder(valueListenable: cnt, builder: (context, value, child) {
//               return ListTile(
//                 title: Text("$value"),
//               );
//
//             },);
//             cnt++;
//             setState(() {
//               cnt++;
//             });
//           },
//
//           child: Container(
//               color: Colors.blue,
//               margin: EdgeInsets.all(10),
//               height: double.infinity,
//               alignment: Alignment.center,
//               child:
//               ValueListenableBuilder(valueListenable: l, builder: (context, value, child) {
//                 return Text(
//                   l[i], style: TextStyle(fontSize: 20, color: Colors.white),);
//               },)
//           )),
//       );
//   }
//   checkWin()
//   {
//     if((l[0]==p1 && l[1]==p1 && l[2]==p1) ||
//         (l[3]==p1 && l[4]==p1 && l[5]==p1) ||
//         (l[6]==p1 && l[7]==p1 && l[8]==p1) ||
//         (l[0]==p1 && l[3]==p1 && l[6]==p1) ||
//         (l[1]==p1 && l[4]==p1 && l[7]==p1) ||
//         (l[2]==p1 && l[5]==p1 && l[8]==p1) ||
//         (l[0]==p1 && l[4]==p1 && l[8]==p1) ||
//         (l[2]==p1 && l[4]==p1 && l[6]==p1) )
//     {
//       msg="$p1 IS WINNER";
//       Win=1;
//     }
//     else if((l[0]==p2 && l[1]==p2 && l[2]==p2) ||
//         (l[3]==p2 && l[4]==p2 && l[5]==p2) ||
//         (l[6]==p2 && l[7]==p2 && l[8]==p2) ||
//         (l[0]==p2 && l[3]==p2 && l[6]==p2) ||
//         (l[1]==p2 && l[4]==p2 && l[7]==p2) ||
//         (l[2]==p2 && l[5]==p2 && l[8]==p2) ||
//         (l[0]==p2 && l[4]==p2 && l[8]==p2) ||
//         (l[2]==p2 && l[4]==p2 && l[6]==p2) )
//     {
//       msg="$p2 IS WINNER";
//       Win=1;
//     }
//     else if (cnt>8)
//     {
//       msg="GAME IS DRAW";
//     }
//   }
// }
