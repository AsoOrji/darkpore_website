import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PolicySatire extends StatefulWidget {
  const PolicySatire({Key? key}) : super(key: key);

  @override
  _PolicySatireState createState() => _PolicySatireState();
}

class _PolicySatireState extends State<PolicySatire> {
  late YoutubePlayerController controller;
  // static String myVideoId = 'PQSagzssvUQ';
  var url = "https://www.youtube.com/watch?v=vBq41qUI2Cs&t=1s";

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      // initialVideoId: myVideoId,
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
                        "Policy Satire",
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
                            "Gain insights and feasible solutionsto Africa's \n economic woes and food system.",
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
                                        'Stay Updated',
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
