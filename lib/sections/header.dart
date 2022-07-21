import 'package:flutter/material.dart';
import 'package:Darkpore/Pages/FoodNerve/foodnerve_main.dart';
import 'package:Darkpore/Pages/HomePage/home1.dart';
import 'package:Darkpore/Pages/MediaPage/media_main.dart';
import 'package:Darkpore/Responsiveness/navbar_drawer.dart';
import 'package:Darkpore/Sections/PodSub/podsub_main.dart';
import 'package:Darkpore/responsiveness/responsiveness_main.dart';
import 'package:Darkpore/sections/footer.dart';

import '../Pages/The Darkpore Shoe/test.dart';

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
              // TheDarkporeShow(),
              Test(),
              Home1(),
              // Home2(),
              // Home4(),
              // Home3(),
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
      color: Colors.transparent,
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
            'The Darkpore Show',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: screenSize.width / 50),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FoodNerveMain()),
            );
          },
          child: const Text(
            'Advisory Council',
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
            'Farmilies',
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
            'FoodNerve',
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
            'Near Zero',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
