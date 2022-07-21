import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'advisory_council.dart';

import 'policy_satire.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var mobile = MediaQuery.of(context).size.width < 600;
    return Stack(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: [
            Container(
              color: Colors.black,
              // margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Stack(
                children: [
                  const AdvisoryCouncil(),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Align(
                      alignment:
                          mobile ? Alignment.center : Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          // Use the controller to change the current page
                          carouselController.previousPage();
                        },
                        icon: Icon(
                          mobile ? Icons.lens : Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Align(
                      alignment:
                          mobile ? Alignment.center : Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          // Use the controller to change the current page
                          carouselController.nextPage();
                        },
                        icon: Icon(
                          mobile ? Icons.adjust : Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              // margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Stack(
                children: [
                  const PolicySatire(),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Align(
                      alignment:
                          mobile ? Alignment.center : Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          // Use the controller to change the current page
                          carouselController.previousPage();
                        },
                        icon: Icon(
                          mobile ? Icons.adjust : Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Align(
                      alignment:
                          mobile ? Alignment.center : Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          // Use the controller to change the current page
                          carouselController.nextPage();
                        },
                        icon: Icon(
                          mobile ? Icons.lens : Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            autoPlay: true,
            disableCenter: false,
            viewportFraction: 1,
            height: 800,
          ),
        ),
      ],
    );
  }
}
