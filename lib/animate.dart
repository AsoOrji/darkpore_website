import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class NewBoy extends StatefulWidget {
  @override
  State<NewBoy> createState() => _NewBoyState();
}

class _NewBoyState extends State<NewBoy> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final nameStyle = Theme.of(context).textTheme.headline2;
    final descriptionStyle = Theme.of(context).textTheme.headline4;
    final workStyle = Theme.of(context).textTheme.headline6;

    return Material(
      child: NotificationListener<ScrollNotification>(
        onNotification: updateOffsetAccordingToScroll,
        child: ScrollConfiguration(
          behavior: NoScrollGlow(),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: -.45 * offset,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: backgroundImage,
                  height: height,
                  width: width,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                top: -.25 * offset,
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          circleIcon(profileicon, 100),
                          Text(
                            'My Name',
                            style: nameStyle!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Representing my core values here',
                            style: descriptionStyle!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Currently Working with",
                              style: workStyle!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: circleIcon(fluttericon, 40),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: circleIcon(darticon, 40)),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: height),
                    Container(
                      height: height,
                      width: width,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    return true;
  }
}

class NoScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

circleIcon(String icon, size) {
  return CircleAvatar(
    radius: size,
    backgroundImage: NetworkImage(icon),
  );
}

const backgroundImage = 'asset/darkpore.jpg';

const profileicon = 'assets/hope.jpg';
const darticon =
    'data:image/png;base64,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';
const fluttericon =
    'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png';
