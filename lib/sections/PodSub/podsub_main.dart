
import 'package:flutter/material.dart';
import 'package:navigation_bar/Sections/PodSub/is_mobile.dart';
import 'package:navigation_bar/Sections/PodSub/is_desktop.dart';

class Sub extends StatelessWidget {
  const Sub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var desktop = MediaQuery.of(context).size.width >= 767.3;
    var mobile = MediaQuery.of(context).size.width < 767.3;

    return Column(
      children: [
        if (desktop) const IsDesktop(),
        if (mobile) const IsMobile(),
      ],
    );
  }
}



