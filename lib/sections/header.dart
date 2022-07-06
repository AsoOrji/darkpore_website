import 'package:flutter/material.dart';
import 'package:navigation_bar/Pages/FoodNerve/foodnerve_main.dart';
import 'package:navigation_bar/Pages/HomePage/home1.dart';
import 'package:navigation_bar/Pages/HomePage/home2.dart';
import 'package:navigation_bar/Pages/HomePage/home3.dart';
import 'package:navigation_bar/Pages/HomePage/home4.dart';
import 'package:navigation_bar/Pages/MediaPage/media_main.dart';
import 'package:navigation_bar/Responsiveness/navbar_drawer.dart';
import 'package:navigation_bar/Sections/PodSub/podsub_main.dart';
import 'package:navigation_bar/responsiveness/responsiveness_main.dart';
import 'package:navigation_bar/sections/footer.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? logo()
            : PreferredSize(
                preferredSize: Size(screenSize.width, screenSize.height),
                child: const NewHeader()),
        drawer: const NavBarDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Home1(),
              Home2(),
              Home4(),
              Home3(),
              Sub(),
              Footer()
            ],
          ),
        ));
  }

  logo() {
    return AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Header()));
          },
          child: Text(
            'DARKPORE',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              letterSpacing: 5,
            ),
          ),
        ));
  }
}

class NewHeader extends StatelessWidget {
  const NewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Header()));
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'DARKPORE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: DesktopNavBar(),
            ),
            SizedBox(width: screenSize.width / 15),
          ],
        ),
      ),
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FoodNerveMain()),
            );
          },
          child: const Text(
            'FoodNerve',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: screenSize.width / 50),
        InkWell(
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const GraphicNovelMain()));
          },
          child: const Text(
            'Graphic Novel',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: screenSize.width / 50),
        InkWell(
          onTap: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const EnergyMain()));
          },
          child: const Text(
            'Energy Solutions',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: screenSize.width / 50),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MediaMain()));
          },
          child: const Text(
            'Media',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
