import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(YoutubeApp());
}

///
class YoutubeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Video',
      home: YoutubeAppDemo(),
    );
  }
}

///
class YoutubeAppDemo extends StatefulWidget {
  const YoutubeAppDemo({Key? key}) : super(key: key);

  @override
  _YoutubeAppDemoState createState() => _YoutubeAppDemoState();
}

class _YoutubeAppDemoState extends State<YoutubeAppDemo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '5opHXq22iOs',
      params: const YoutubePlayerParams(
          // playlist: [
          //   '5opHXq22iOs',
          // ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerControllerProvider(
      controller: _controller,
      child: Scaffold(
          body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // const YoutubePlayerIFrame(),
        ],
      )),
    );
  }
}
