import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_bar/Pages/Energy/energy_main.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: FutureBuilder(
            future: FireStoreDataBase().getData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text(
                  "Something went wrong",
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return Image.network(
                  snapshot.data.toString(),
                  // fit: BoxFit.cover,
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              // child: RichText(
              //     textAlign: TextAlign.center,
              //     text: const TextSpan(
              //         text: 'Graphic Novel\n',
              //         style: TextStyle(
              //             fontSize: 40,
              //             color: Colors.black,
              //             fontWeight: FontWeight.w600),
              //         children: [
              //           TextSpan(
              //             text: 'We\'re Driving ',
              //             style: TextStyle(
              //               fontSize: 17,
              //               color: Colors.black,
              //               fontWeight: FontWeight.w100,
              //             ),
              //           ),
              //           TextSpan(
              //             text: 'Cultural Change',
              //             style: TextStyle(
              //               fontSize: 17,
              //               color: Colors.black,
              //               fontWeight: FontWeight.w100,
              //               decoration: TextDecoration.underline,
              //             ),
              //           ),
              //         ])),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 550,
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
                            primary: Colors.white,
                            backgroundColor: Colors.black),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const EnergyMain()),
                          // );
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
        )
      ],
    );
  }
}

class FireStoreDataBase {
  String? downloadURL;

  Future getData() async {
    try {
      await downloadURLExample();
      return downloadURL;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<void> downloadURLExample() async {
    downloadURL = await FirebaseStorage.instance
        .ref()
        .child(
          "page_images/gnovel.jpg",
        )
        .getDownloadURL();
    debugPrint(downloadURL.toString());
  }
}
