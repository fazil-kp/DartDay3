// import 'package:flutter/material.dart';
//
// class ColumnRowContainer extends StatelessWidget {
//   const ColumnRowContainer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Containers"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               color: Colors.red,
//               alignment: Alignment.center,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.green,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.yellow,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.orange,
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 50,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               color: Colors.blue,
//               alignment: Alignment.center,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.green,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.yellow,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.orange,
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 50,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               color: Colors.pinkAccent,
//               alignment: Alignment.center,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.green,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.yellow,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.orange,
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 50,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ColumnRowContainer extends StatelessWidget {
  const ColumnRowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Containers"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          buildContainer(Colors.red),
          buildContainer(Colors.blue),
          buildContainer(Colors.pinkAccent),
        ],
      ),
    );
  }

  buildContainer(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: color,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildSmallContainer(Colors.green),
            buildSmallContainer(Colors.yellow),
            buildSmallContainer(Colors.orange),
            buildSmallContainer(Colors.black),
          ],
        ),
      ),
    );
  }

  buildSmallContainer(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        color: color,
      ),
    );
  }
}
