import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/Auth/Google/foodnerve.dart';
import 'package:navigation_bar/Pages/Energy/energy_main.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800,
        padding: const EdgeInsets.only(top: 0),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/house.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    text: 'Energy Storage & Solution\n',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text:
                        '             Produce clean energy and transform your live ',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
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
                                builder: (context) => const EnergyMain()),
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
