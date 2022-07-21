import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class AdvisoryCouncil extends StatefulWidget {
  const AdvisoryCouncil({Key? key}) : super(key: key);

  @override
  _AdvisoryCouncilState createState() => _AdvisoryCouncilState();
}

class _AdvisoryCouncilState extends State<AdvisoryCouncil> {
  late YoutubePlayerController controller;
  var url = "https://www.youtube.com/watch?v=9iAzb9RfT4s&t=7s";

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
      color: Colors.black,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage(
      //         "https://media.istockphoto.com/photos/sad-and-tired-businesswoman-picture-id1165027899?b=1&k=20&m=1165027899&s=170667a&w=0&h=7S0YQP60zNDh3v7UpaIt2zc5kEzl2uxbIasUyE4_l7I="),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Stack(
        children: [
          Padding(
            padding: mobile
                ? const EdgeInsets.only(
                    top: 150.0,
                  )
                : const EdgeInsets.only(top: 150.0, left: 100),
            child: YoutubePlayer(
              width: mobile ? screenSize.width : screenSize.width * 0.38,
              controller: controller,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 100.0, left: 600),
          // child: Image(
          //   image: const AssetImage('assets/man.png'),
          //   height: screenSize.height * 2,
          // ),
          // ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Advisory Council",
                        style: TextStyle(
                            fontSize: mobile ? 22 : 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 390, left: 14),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 40),
                          child: Text(
                            "Avoid the uncertainties and confusion faced by young people in the personal, social and professional life.",
                            style: TextStyle(
                                fontSize: mobile ? 14 : 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        BootstrapContainer(
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
                                        foregroundColor: Colors.white,
                                        shape: const StadiumBorder(
                                          side: BorderSide(color: Colors.white),
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
                                        'Explore',
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
                                      onPressed: () {},
                                      child: const Text(
                                        'Request Advice',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
}
