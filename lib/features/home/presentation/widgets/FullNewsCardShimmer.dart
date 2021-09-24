import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FullNewsCardShimmer extends StatelessWidget {
  const FullNewsCardShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white30,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(),
                  SizedBox(width: 15),
                  Container(height: 10, width: 200, color: Colors.white30)
                ],
              ),
              SizedBox(height: 5),
              Container(
                  height: MediaQuery.of(context).size.width / 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white30),
              SizedBox(height: 5),
              Container(height: 10, width: 300, color: Colors.white30),
              SizedBox(height: 1),
              Container(height: 10, width: 300, color: Colors.white30),
              SizedBox(height: 1),
              Container(height: 10, width: 300, color: Colors.white30),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
