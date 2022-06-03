import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/Pages/MediaPage/media_main.dart';

class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 760,
        padding: const EdgeInsets.only(top: 0),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/food.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    text: 'Media & Newsroom\n',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text: '                 We\'re Changing ',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  TextSpan(
                    text: 'Narrative!',
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
                            primary: Colors.black,
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MediaMain()),
                          );
                        },
                        child: Text(
                          'WATCH OUR EXPERTS TALK',
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
