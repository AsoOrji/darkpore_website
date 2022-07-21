import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  late YoutubePlayerController controller;
  var url = "https://www.youtube.com/watch?v=AHCn2h3aAJQ";

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var mobile = MediaQuery.of(context).size.width < 600;
    return Container(
      color: Colors.yellow.shade700,
      child: Stack(
        children: [
          BootstrapContainer(
            children: [
              BootstrapRow(
                // height: 120,
                children: <BootstrapCol>[
                  BootstrapCol(
                    sizes: 'col-12 col-md-6',
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 0),
                      child: YoutubePlayer(
                        width: screenSize.width,
                        controller: controller,
                      ),
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-12 col-md-6',
                    child: Image(
                      image: const AssetImage('assets/man.png'),
                      height: screenSize.height,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      // top: 50,
                      ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Foodnerve OS",
                          style: TextStyle(
                              fontSize: mobile ? 22 : 40,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: mobile
                        ? const EdgeInsets.only(top: 390)
                        : const EdgeInsets.only(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 530,
                            bottom: 30,
                          ),
                          child: BootstrapContainer(
                            children: [
                              BootstrapRow(
                                // height: 120,
                                children: <BootstrapCol>[
                                  BootstrapCol(
                                    sizes: 'col-12 col-md-6',
                                    child: Container(
                                      margin: mobile
                                          ? const EdgeInsets.only(
                                              left: 5, right: 5, bottom: 15)
                                          : const EdgeInsets.only(
                                              left: 110,
                                              right: 110,
                                            ),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.black,
                                          shape: const StadiumBorder(
                                            side:
                                                BorderSide(color: Colors.black),
                                          ),
                                          // ignore: prefer_const_constructors
                                          padding: EdgeInsets.only(
                                              left: 70,
                                              right: 70,
                                              top: 20,
                                              bottom: 20),
                                          textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          'Learn more',
                                        ),
                                      ),
                                    ),
                                  ),
                                  BootstrapCol(
                                    sizes: 'col-12 col-md-6',
                                    child: Container(
                                      margin: mobile
                                          ? const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                            )
                                          : const EdgeInsets.only(
                                              left: 110,
                                              right: 110,
                                            ),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            shape: const StadiumBorder(),
                                            // ignore: prefer_const_constructors
                                            padding: EdgeInsets.only(
                                                left: 50,
                                                right: 50,
                                                top: 20,
                                                bottom: 20),
                                            textStyle: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                            backgroundColor: Colors.white),
                                        onPressed: () {
                                          url =
                                              "https://firebasestorage.googleapis.com/v0/b/foodnerve-3658e.appspot.com/o/FoodNerve%20App%20Versions%20Release%2FFoodNerve%201.0.apk?alt=media&token=1bfc7c74-6e72-4e25-83cb-e064078ff3f2";
                                          launchURL(url);
                                        },
                                        child: const Text(
                                          'Download App',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: color,
      child: Text(text),
    );
  }
}
