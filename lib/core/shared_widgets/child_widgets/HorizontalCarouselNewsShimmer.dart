import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HorizontalCarouselNewsShimmer extends StatelessWidget {
  const HorizontalCarouselNewsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white30,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                  height: 90,
                  width: 120,
                  color: Colors.white30,
                  child: Text("")),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Container(
                    height: 20,
                    width: 220,
                    color: Colors.white30,
                    child: Text("")),
                SizedBox(height: 5),
                Container(
                    height: 20,
                    width: 150,
                    color: Colors.white30,
                    child: Text("")),
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                        height: 15,
                        width: 75,
                        color: Colors.white30,
                        child: Text("")),
                    SizedBox(width: 10),
                    Container(
                        height: 15,
                        width: 75,
                        color: Colors.white30,
                        child: Text("")),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
