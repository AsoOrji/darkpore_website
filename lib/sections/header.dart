import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/Auth/sign_in.dart';
import 'package:navigation_bar/Pages/FoodNerve/foodnerve_main.dart';
import 'package:navigation_bar/Pages/HomePage/home2.dart';
import 'package:navigation_bar/Pages/HomePage/home3.dart';
import 'package:navigation_bar/Pages/HomePage/home4.dart';
import 'package:navigation_bar/Pages/HomePage/home_main.dart';
import 'package:navigation_bar/Pages/NextMeat/nextmeat_main.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeMain()),
              );
            },
            icon: Icon(Icons.home),
            padding: EdgeInsets.only(left: 200, right: 200),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 16,
              ),
              primary: Colors.black,
              padding: const EdgeInsets.only(left: 30, right: 30),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FoodNerveMain()),
              );
            },
            child: Text(
              'FoodNerve',
              style: GoogleFonts.kanit(),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              primary: Colors.black,
              padding: const EdgeInsets.only(left: 30, right: 30),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home3()),
              );
            },
            child: Text(
              'Graphic Novel',
              style: GoogleFonts.kanit(),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              primary: Colors.black,
              padding: const EdgeInsets.only(left: 30, right: 30),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home4()),
              );
            },
            child: Text(
              'Media',
              style: GoogleFonts.kanit(),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              primary: Colors.black,
              padding: const EdgeInsets.only(left: 30, right: 30),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home2()),
              );
            },
            child: Text(
              'Energy Solution',
              style: GoogleFonts.kanit(),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              primary: Colors.black,
              padding: const EdgeInsets.only(left: 30, right: 30),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NextMeatMain()),
              );
            },
            child: Text(
              'Next Meat',
              style: GoogleFonts.kanit(),
            ),
          ),
        ],
      ),
    );
  }
}
