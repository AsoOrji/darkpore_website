import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/Auth/Google/foodnerve.dart';
import 'package:navigation_bar/Pages/GraphicNovelPage/graphic_novel_main.dart';

class Home3 extends StatelessWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 760,
        padding: const EdgeInsets.only(top: 0),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/hope.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    text: 'Graphic Novel\n',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text: '   We\'re Driving',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  TextSpan(
                    text: ' Cultural Change',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ])),
            Padding(
                padding: const EdgeInsets.only(
                  top: 500,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            shape: const StadiumBorder(),
                            // ignore: prefer_const_constructors
                            padding: EdgeInsets.only(
                                left: 100, right: 100, top: 20, bottom: 20),
                            textStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            primary: Colors.white,
                            backgroundColor: Colors.black),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GraphicNovelMain()),
                          );
                        },
                        child: Text(
                          'LEARN MORE',
                          style: GoogleFonts.kanit(),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
