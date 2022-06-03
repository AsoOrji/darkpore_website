import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/Auth/sign_in.dart';
import 'package:navigation_bar/sections/float_button.dart';
import 'package:navigation_bar/sections/footer.dart';
import 'package:navigation_bar/sections/header.dart';

class FoodNerveMain extends StatelessWidget {
  const FoodNerveMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Header(),
        Container(
            height: 600,
            padding: EdgeInsets.only(
              top: 100,
            ),
            child: Column(
              children: [
                Text(
                  'We are shaping the Future',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''An estimated 1.3 billion tonnes of food is wasted globally each year, one 
third of all food produced for human consumption. This is a problem 
because of the ever growing population. With an estimated population of 
over 250 million in 3 years, there isn’t enough food to feed the populace. 
We cannot afford to allow our foods go to waste.

At Food Innovation Nervecenter, we are working to eliminate food loss 
and waste. With the Food Nerve OS we can intelligently redirect 
excessive food that would normally be wasted by connecting 
communities together through our App to share excess food with their 
neighbors and those around them. Also, we are working to connect 
producers/suppliers of food to consumers to help prevent food loss.

With the FoodNerve OS, we can give and take, we can save our 
environment, world and protect our planet.

 ''',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                TextButton(
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
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: Text(
                    'JOIN US',
                    style: GoogleFonts.kanit(),
                  ),
                ),
              ],
            )),
        Footer(),
      ]),
      floatingActionButton: FloatButton(),
    );
  }
}
