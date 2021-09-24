import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'HomePageWidgets.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          SvgPicture.asset(
            "assets/head_blue_curve.svg",
            color: Theme.of(context).primaryColor,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Padding(padding: EdgeInsets.all(10), child: DateNepaliEnglish()),
          Positioned(
            top: 80,
            child: Greeting(),
          )
        ],
      ),
    );
  }
}
