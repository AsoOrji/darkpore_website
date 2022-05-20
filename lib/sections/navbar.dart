import 'package:flutter/material.dart';
import 'package:navigation_bar/pages/foodnerve/foodnerve.dart';
import 'package:navigation_bar/sections/float_button.dart';
import 'package:navigation_bar/sections/footer.dart';
import 'package:navigation_bar/sections/section1.dart';

class Nav_Bar extends StatelessWidget {
  const Nav_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: ListView(
        children: [
          // ignore: dead_code
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            decoration: const BoxDecoration(color: Color(0xFF212121)),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      primary: Colors.grey[400]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FoodNerveHome()),
                    );
                  },

                  child: const Text('FoodNerve'),
                ),
                const SizedBox(height: 50),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                    primary: Colors.grey[400],
                  ),
                  onPressed: () {},
                  child: const Text('Graphic Novels'),
                ),
                // const SizedBox(height: 50),
                TextButton(
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      primary: Colors.grey[400]),
                  onPressed: () {},
                  child: const Text('ROMCOM'),
                ),
                // const SizedBox(height: 50),
                TextButton(
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      primary: Colors.grey[400]),
                  onPressed: () {},
                  child: const Text('Next Meat'),
                ),
                // const SizedBox(height: 50),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                        primary: Colors.grey[400]),
                    onPressed: () {},
                    child: const Text('Media'))
              ],
            ),
          ),
          Section1(),
          Foot(),
        ],
      ),
      // floatingActionButton: FloatButton(),
    );
  }
}
