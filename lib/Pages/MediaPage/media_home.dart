import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MediaHome extends StatefulWidget {
  const MediaHome({Key? key}) : super(key: key);

  @override
  State<MediaHome> createState() => _MediaHomeState();
}

class _MediaHomeState extends State<MediaHome> {
  CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('users');
  // final TextEditingController _addItemController = TextEditingController();
  // late DocumentReference linkRef;
  // List<String> videoID = [];
  // bool showItem = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Policy Newsroom"),
          backgroundColor: Colors.grey[700],
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, snapshot) {
            // if (!snapshot.hasData) {
            //   return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
            getData();
            return ListView(
                //   children:
                //   // children: snapshot.data.docs.map((document) {}).toList(),
                );
          },
        )
        // body: Column(
        //   children: [
        //     TextField(
        //         controller: _addItemController,
        //         style: const TextStyle(fontSize: 16),
        //         decoration: InputDecoration(
        //             labelText: "Video URL",
        //             suffixIcon: GestureDetector(
        //               child: const Icon(
        //                 Icons.add,
        //                 size: 32,
        //               ),
        //               onTap: () {
        //                 _addItemFunction();
        //               },
        //             ))),
        //     Flexible(
        //         child: Container(
        //             margin: const EdgeInsets.symmetric(horizontal: 4),
        //             child: showItem
        //                 ? ListView.builder(
        //                     itemCount: videoID.length,
        //                     itemBuilder: ((context, index) => Container(
        //                           margin: const EdgeInsets.all(8),
        //                           child: YoutubePlayer(
        //                             controller: YoutubePlayerController(
        //                                 initialVideoId:
        //                                     YoutubePlayer.convertUrlToId(
        //                                             videoID[index])
        //                                         .toString(),
        //                                 flags: const YoutubePlayerFlags(
        //                                     autoPlay: false)),
        //                             showVideoProgressIndicator: true,
        //                             progressIndicatorColor: Colors.blue,
        //                             progressColors: const ProgressBarColors(
        //                                 playedColor: Colors.blue,
        //                                 handleColor: Colors.blueAccent),
        //                           ),
        //                         )))
        //                 : CircularProgressIndicator()))
        //   ],
        );
  }

  Future<void> getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    print(allData);
  }

  // void initState() {
  //   linkRef = FirebaseFirestore.instance.collection('links').doc('myLink');
  //   super.initState();
  //   getData();
  // }

  // _addItemFunction() async {
  //   await linkRef.set({
  //     _addItemController.text.toString(): _addItemController.text.toString()
  //   }, SetOptions(merge: true));
  //   setState(() {
  //     videoID.add(_addItemController.text);
  //   });
  // }

  // getData() async {
  //   await linkRef
  //       .get()
  //       .then((value) => (value.data() as List).forEach((value) {
  //                 if (!videoID.contains((value))) {
  //                   videoID.add(value);
  //                 }
  //               })
  //           )
  //       .whenComplete(() => setState(() {
  //             videoID.shuffle();
  //             showItem = true;
  //           }));
  // }
}
