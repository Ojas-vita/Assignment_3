// // ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'pages/home.dart';

// class DialogBox extends StatelessWidget {
//   final Controller;
//   VoidCallback onCompleted;
//   VoidCallback onForfeit;
//   DialogBox({
//     super.key,
//     required this.Controller,
//     required this.onCompleted,
//     required this.onForfeit,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Color.fromARGB(183, 32, 29, 6),
//       content: SizedBox(
//         height: 120,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             TextField(
//               controller: Controller,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(5),
//                   ),
//                 ),
//                 hintText: "Create New Task",
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: onCompleted,
//                   child: Icon(
//                     Icons.save,
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Icon(
//                     Icons.cancel,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
