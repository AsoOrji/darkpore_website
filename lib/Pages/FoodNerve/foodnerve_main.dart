import 'package:Darkpore/Sections/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Darkpore/Sections/footer.dart';

import '../../Responsiveness/navbar_drawer.dart';
import '../../Responsiveness/responsiveness_main.dart';

class FoodNerveMain extends StatelessWidget {
  const FoodNerveMain({Key? key}) : super(key: key);

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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('data').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            alignment: Alignment.center,
            child: ListView(
              children: snapshot.data!.docs.map(
                (document) {
                  return SizedBox(
                    height: screenSize.height,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 40,
                          left: screenSize.width * 0.2,
                          right: screenSize.width * 0.2),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              document['text_foodnerve1'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              document['text_foodnerve2'],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              document['text_foodnerve3'],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              document['text_foodnerve4'],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  shape: const StadiumBorder(),
                                  // ignore: prefer_const_constructors
                                  padding: EdgeInsets.only(
                                      left: 70, right: 70, top: 20, bottom: 20),
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                  ),
                                  backgroundColor: Colors.black),
                              onPressed: () {},
                              child: Text(
                                'JOIN US',
                                style: GoogleFonts.kanit(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          );
        },
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
