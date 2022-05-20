import 'package:flutter/material.dart';
import 'package:navigation_bar/pages/foodnerve/foodnerve.dart';

class Section1 extends StatelessWidget {
  const Section1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 700,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/darkpore.png'),
          ),
        ),
        // padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            RichText(
                text: TextSpan(
                    text: 'FoodNerve OS\n',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text: '       We\'re Shaping ',
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
                padding: EdgeInsets.only(top: 550),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                        primary: Colors.grey[400],
                        backgroundColor: Color(0xFF212121),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FoodNerveHome()),
                        );
                      },
                      child: const Text('GIVE OR GET FOOD'),
                    ),
                    // Text('Get Food')
                  ],
                )),
          ],
        ));
  }
}
