import 'package:flutter/material.dart';
import 'package:navigation_bar/Sections/float_button.dart';
import 'package:navigation_bar/Sections/footer.dart';
import 'package:navigation_bar/Sections/header.dart';

import '../../Responsiveness/navbar_drawer.dart';
import '../../Responsiveness/responsiveness_main.dart';

class AboutMain extends StatelessWidget {
  const AboutMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? logo(context)
          : PreferredSize(
              preferredSize: Size(screenSize.width, screenSize.height),
              child: const NewHeader()),
      drawer: const NavBarDrawer(),
      body: Container(
        alignment: Alignment.center,
        // height: 2000,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: ListView(
              children: const [
                Center(
                  child: Text(
                    'About Us',
                    // ignore: unnecessary_const
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Darkpore Media Africa is a research, design and development firm innovating revolutionary solutions to development challenges across Africa and emerging economies. We are investing significant resources into alternative protein biotech research, near-zero energy systems, cold chain logistics for food, data-driven distribution and earth observation systems for local food production. ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Established in 2018 in Lagos, Nigeria, our goal is to use every resource possible: Cutting edge R&D, Data platforms, Satellite Technology, Stories! Music! Videos! Memes! Web! Big data! Live festivals! to connect and inspire communities that flourish and nourish."),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Though our development projects: the food innovation nerve center, we are implementing the FoodNerve Vision 2050, an aggressive and ambitious plan to transform Subsaharan Africa into a collection of wealthy,close-knit, thriving communities that nourish themselves through healthy meals from innovative sources that replenish the Earth."),
              ],
            ),
          ),
        ),
      ),
      persistentFooterButtons: const [Footer()],
      floatingActionButton: const FloatButton(),
    );
  }

  logo(context) {
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
