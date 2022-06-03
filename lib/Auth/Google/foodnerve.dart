// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:navigation_bar/Auth/sign_in.dart';
// import 'package:navigation_bar/FoodNerve/AddListing/add_listing.dart';

// class FoodNerveHome extends StatefulWidget {
//   const FoodNerveHome({Key? key}) : super(key: key);

//   @override
//   State<FoodNerveHome> createState() => _FoodNerveHomeState();
// }

// class _FoodNerveHomeState extends State<FoodNerveHome> {
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       body: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasData) {
//               return AddListing();
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Something Went Wrong!'));
//             } else {
//               return SignIn();
//             }
//           }),
//     );
//   }
// }
