import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GraphicNovelMain extends StatelessWidget {
  const GraphicNovelMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('data').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map(
              (document) {
                return Container(
                  alignment: Alignment.center,
                  height: 650,
                  child: Center(
                      child: Text(
                    document['text_graphic_novel'],
                    style: const TextStyle(color: Colors.black, fontSize: 28),
                  )),
                );
              },
            ).toList(),
          );
        },
      ),
    );
  }
}
