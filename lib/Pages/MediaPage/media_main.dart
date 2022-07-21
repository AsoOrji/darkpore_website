import 'package:flutter/material.dart';
import 'package:Darkpore/Sections/PodSub/podsub_main.dart';
import 'package:Darkpore/Sections/footer.dart';
import 'package:Darkpore/Sections/header.dart';

import '../../Responsiveness/navbar_drawer.dart';
import '../../Responsiveness/responsiveness_main.dart';

class MediaMain extends StatelessWidget {
  const MediaMain({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Sub(),
          ],
        ),
      ),
      persistentFooterButtons: const [Footer()],
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
