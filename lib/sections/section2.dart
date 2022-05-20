import 'package:flutter/material.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/darkpore.png'),
          ),
        ),
        height: 673,
        // alignment: Alignment.bottomLeft,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 550),
        child: Center(
          child: RichText(
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
        ));
  }
}
