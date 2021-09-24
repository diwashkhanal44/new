import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VideoCardShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.only(left: 16),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 10,
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.white30,
          child: Container(
            width: 200,
            height: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 200, height: 100, color: Colors.white30),
                SizedBox(height: 5),
                Container(height: 10, width: 180, color: Colors.white30),
                SizedBox(height: 5),
                Container(height: 10, width: 80, color: Colors.white30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
