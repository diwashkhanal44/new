import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  final Widget child;
  const ComingSoon({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 0,
          right: 0,
          child: SizedBox(
            height: 15,
            child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: FittedBox(
                    child: Text(
                  "Coming Soon",
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        )
      ],
    );
  }
}
