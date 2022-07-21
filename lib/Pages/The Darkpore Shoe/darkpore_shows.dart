// import 'package:flutter/material.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';

// class DemoPage extends StatefulWidget {
//   @override
//   _DemoPageState createState() => _DemoPageState();
// }

// class _DemoPageState extends State<DemoPage> {
//   @override
//   void initState() {
//     super.initState();
//     bootstrapGridParameters(
//       gutterSize: 30,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('flutter_bootstrap Demo',
//             style: TextStyle(color: Colors.black)),
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: BootstrapContainer(
//           fluid: true,
//           decoration: const BoxDecoration(color: Colors.blue),
//           children: [
//             BootstrapContainer(
//               fluid: false,
//               decoration: const BoxDecoration(color: Colors.white),
//               padding: const EdgeInsets.only(top: 50),
//               children: <Widget>[
//                 const Divider(),
//                 BootstrapRow(
//                   height: 120,
//                   children: <BootstrapCol>[
//                     BootstrapCol(
//                       sizes: 'col-12 col-md-6',
//                       child: const ContentWidget(
//                         text: 'A',
//                         color: Colors.yellow,
//                       ),
//                     ),
//                     BootstrapCol(
//                       sizes: 'col-12 col-md-6',
//                       child: const ContentWidget(
//                         text: 'B',
//                         color: Colors.green,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ContentWidget extends StatelessWidget {
//   const ContentWidget({
//     Key? key,
//     required this.text,
//     required this.color,
//   }) : super(key: key);

//   final String text;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       color: color,
//       child: Text(text),
//     );
//   }
// }
