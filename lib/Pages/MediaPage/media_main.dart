import 'package:flutter/material.dart';
import 'package:navigation_bar/Pages/HomePage/home1.dart';
import 'package:navigation_bar/Pages/HomePage/home2.dart';
import 'package:navigation_bar/Pages/HomePage/home3.dart';
import 'package:navigation_bar/Pages/HomePage/home4.dart';
import 'package:navigation_bar/sections/footer.dart';
import 'package:navigation_bar/sections/header.dart';
import 'package:navigation_bar/sections/float_button.dart';

// ignore: camel_case_types
class MediaMain extends StatelessWidget {
  const MediaMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Header(),
        Container(
          height: 650,
          padding: EdgeInsets.only(top: 300, left: 500),
          child: Text(
            'Hey there, We\'re changing narrative. Watch out!',
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
        ),
        Footer(),
      ]),
      floatingActionButton: FloatButton(),
    );
  }
}
