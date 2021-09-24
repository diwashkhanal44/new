// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:you/config/api_call_defaults.dart';
// import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
// import 'package:you/features/latest_news/models/NewsModel.dart';
// import 'package:you/routes/auto_router.gr.dart';

// class VerticalHalfSizeNewsCardHeadingAtButtom extends StatelessWidget {
//   final Datum newsEntity;

//   VerticalHalfSizeNewsCardHeadingAtButtom({Key? key, required this.newsEntity})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         if (newsEntity.link != null)
//           AutoRouter.of(context)
//               .push(NewsWebView(title: "Title", url: newsEntity.link!));
//       },
//       child: Padding(
//         padding: EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       AdaptiveText(newsEntity.title!,
//                           style: Theme.of(context).textTheme.headline6),
//                       SizedBox(height: 5),
//                       if (newsEntity.meta_description != null)
//                         AdaptiveText(
//                           newsEntity.meta_description!,
//                           maxLines: 3,
//                         ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: AdaptiveText(
//                                 newsEntity.source?.toUpperCase() ??
//                                     defaultNewsProviderName +
//                                         ' · ' +
//                                         newsEntity.created_at! +
//                                         ' · '),
//                           ),
//                           Icon(Icons.trending_up),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: SizedBox(
//                     height: 100,
//                     width: 100,
//                     child: Image.network(
//                         newsEntity.image ?? defaultNewsProviderImageUrl,
//                         errorBuilder: (context, error, stackTrace) =>
//                             Image.network(defaultNewsProviderImageUrl,
//                                 fit: BoxFit.cover),
//                         fit: BoxFit.cover),
//                   ),
//                 ),
//               ],
//             ),
//             Divider(),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(Icons.thumb_up),
//                   Icon(Icons.thumb_down),
//                   Icon(Icons.comment),
//                   Icon(Icons.share),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
