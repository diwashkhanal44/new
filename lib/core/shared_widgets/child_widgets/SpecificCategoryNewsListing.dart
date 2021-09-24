// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:you/core/shared_widgets/shared_widget.dart';

// class SpecificCategoryNewsListing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Widget getRandomWidgets() {
//       final randomNumber = Random().nextInt(3);

//       switch (randomNumber) {
//         case 0:
//           return VerticalHalfSizeNewsCard();
//         case 1:
//           return HorizontalHalfSizeNewsCard();
//         case 2:
//           return VerticalHalfSizeNewsCardHeadingAtButtom();
//         default:
//           return VerticalHalfSizeNewsCard();
//       }
//     }

//     return Scaffold(
//       body: ListView.separated(
//         cacheExtent: 0,
//         itemCount: 20,
//         padding: EdgeInsets.only(top: 5),
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemBuilder: (context, index) => getRandomWidgets(),
//         separatorBuilder: (context, index) => SizedBox(height: 12),
//       ),
//     );
//   }
// }
