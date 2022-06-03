// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// // ignore: camel_case_types
// class myUser {
//   String id;
//   final String name;
//   final String age;
//   final String birthday;

//   myUser({
//     this.id = '',
//     required this.name,
//     required this.age,
//     required this.birthday,
//   });
//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'name': name,
//         'age': age,
//         'birthday': birthday,
//       };

//   static myUser fromJson(Map<String, dynamic> json) => myUser(
//         id: json['id'],
//         name: json['name'],
//         age: json['age'],
//         birthday: json['birthday'],
//       );
// }

// class DemoVideo extends StatefulWidget {
//   const DemoVideo({Key? key}) : super(key: key);

//   @override
//   State<DemoVideo> createState() => _DemoVideoState();
// }

// class _DemoVideoState extends State<DemoVideo> {
//   final controller = TextEditingController();
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<List<myUser>>(
//           stream: readUsers(),
//           builder: (context, snapshot) {
//             if (snapshot.hasError) {
//               return Text('Something went really wrong! $snapshot');
//             } else if (snapshot.hasData) {
//               final users = snapshot.data!;
//               return ListView(
//                 YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: 'K18cpp_-gP8',
//     params: YoutubePlayerParams(
//         playlist: ['nPt8bK2gbaU', 'gQDByCdjUXw'], // Defining custom playlist
//         startAt: Duration(seconds: 30),
//         showControls: true,
//         showFullscreenButton: true,
//     ),
// );
//                 children: users.map(buildUser).toList(),
//               );
//             } else {
//               return const Center(child: CircularProgressIndicator());
//             }
//           }),
//     );
//   }

//   Widget buildUser(myUser user) => ListTile(
//         leading: CircleAvatar(child: Text('${user.age}')),
//         title: Text(user.name),
//         subtitle: Text(user.birthday),
//       );

//   Stream<List<myUser>> readUsers() => FirebaseFirestore.instance
//       .collection('users')
//       .snapshots()
//       .map((snapshot) =>
//           snapshot.docs.map((doc) => myUser.fromJson(doc.data())).toList());

//   Future createUser(
//       {required String name,
//       required String age,
//       required String birthday}) async {
//     final docUser = FirebaseFirestore.instance.collection('users').doc();

//     final user = myUser(
//       id: docUser.id,
//       name: name,
//       age: age,
//       // age: '21',
//       // birthday: '2001, 7, 28',
//       birthday: birthday
//     );

//     final json = user.toJson();

//     await docUser.set(json);
//   }
// }
