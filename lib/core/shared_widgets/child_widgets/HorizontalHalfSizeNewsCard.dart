// import 'package:flutter/material.dart';
// import 'package:timeago/timeago.dart';
// import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
// import 'package:you/features/home/domain/entities/NewsEntity.dart';

// class HorizontalHalfSizeNewsCard extends StatelessWidget {
//   final newsEntity = NewsEntity(
//       title: "देउवाले बोलाए कांग्रेस पदाधिकारी बैठक",
//       author: "खबरहब",
//       webSite: "खबरहब",
//       dateTime: DateTime.now(),
//       description:
//           "काठमाडौँ– आफ्नो नेतृत्वमा सरकार गठनका लागि दौडधुपमा रहेका नेपाली कांग्रेसका सभापति शेरबहादुर देउवाले पदाधिकारी बैठक बोलाएका छन् ।",
//       webSiteLogo:
//           "https://i1.wp.com/sgp1.digitaloceanspaces.com/appharus1/khubs3/uploads/2019/01/logo.png?resize=96%2C96&ssl=1",
//       photoUrl:
//           "https://i0.wp.com/sgp1.digitaloceanspaces.com/appharus1/khubs3/uploads/2020/07/Sher-Bahadur-Deuba-scaled.jpg?w=1440&ssl=1",
//       permalink: "https://www.khabarhub.com/2021/13/268979/");

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: Row(
//         children: [
//           Expanded(
//             child: buildNewsCard(context),
//           ),
//           Container(
//             width: 1,
//             height: 210,
//             margin: EdgeInsets.symmetric(horizontal: 7),
//             color: Colors.black12,
//           ),
//           Expanded(
//             child: buildNewsCard(context),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildNewsCard(BuildContext context) {
//     return InkWell(
//       highlightColor: Colors.transparent,
//       onTap: () {},
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.network(newsEntity.photoUrl, fit: BoxFit.cover),
//           SizedBox(height: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AdaptiveText(newsEntity.title,
//                   style: Theme.of(context).textTheme.headline6),
//               SizedBox(height: 5),
//               if (newsEntity.description != null)
//                 AdaptiveText(
//                   newsEntity.description!,
//                   maxLines: 3,
//                 ),
//               SizedBox(height: 5),
//               AdaptiveText(newsEntity.webSite.toUpperCase() +
//                   ' · ' +
//                   format(newsEntity.dateTime))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
