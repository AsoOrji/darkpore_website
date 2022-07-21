import 'package:flutter/material.dart';
import 'package:Darkpore/Pages/About/about_main.dart';
import 'package:Darkpore/Pages/FoodNerve/foodnerve_main.dart';
import 'package:Darkpore/Pages/MediaPage/media_main.dart';

class NavBarDrawer extends StatefulWidget {
  const NavBarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _NavBarDrawerState createState() => _NavBarDrawerState();
}

class _NavBarDrawerState extends State<NavBarDrawer> {
  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FoodNerveMain()),
                  );
                },
                child: const Text(
                  'FoodNerve',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Energy Solutions',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Graphic Novel',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MediaMain()),
                  );
                },
                child: const Text(
                  'Media',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
              ),
             
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutMain()),
                  );
                },
                child: const Text(
                  'About',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2022 | DARKPORE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
