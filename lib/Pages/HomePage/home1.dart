import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/Pages/FoodNerve/foodnerve_main.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 750,
        padding: const EdgeInsets.only(top: 0),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/darkpore.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    text: 'FoodNerve OS\n',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text: '      We\'re Shaping ',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  TextSpan(
                    text: 'The Future!',
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
                      margin: const EdgeInsets.only(bottom: 100),
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
                                builder: (context) => const FoodNerveMain()),
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
