// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:you/config/api_call_defaults.dart';
// import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
// import 'package:you/features/latest_news/models/NewsModel.dart';
// import 'package:you/routes/auto_router.gr.dart';

// class VerticalHalfSizeNewsCard extends StatelessWidget {
//   final Datum newsEntity;

//   VerticalHalfSizeNewsCard({Key? key, required this.newsEntity})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(8),
//       child: Card(
//         child: InkWell(
//           highlightColor: Colors.transparent,
//           splashColor: Theme.of(context).primaryColor.withOpacity(.2),
//           onTap: () {
//             if (newsEntity.link != null)
//               AutoRouter.of(context)
//                   .push(NewsWebView(title: "Title", url: newsEntity.link!));
//           },
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Image.network(
//                       newsEntity.source_logo ?? defaultNewsProviderImageUrl,
//                       errorBuilder: (context, error, stackTrace) =>
//                           Image.network(defaultNewsProviderImageUrl),
//                       width: 30,
//                       height: 30,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         AdaptiveText(
//                           newsEntity.source ?? defaultNewsProviderName,
//                           style: Theme.of(context).textTheme.subtitle2,
//                         ),
//                         AdaptiveText(newsEntity.created_at ?? 'a while ago'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           AdaptiveText(newsEntity.title ?? '',
//                               style: Theme.of(context).textTheme.headline6),
//                           SizedBox(height: 5),
//                           if (newsEntity.meta_description != null)
//                             AdaptiveText(
//                               newsEntity.meta_description!,
//                               maxLines: 4,
//                             )
//                         ],
//                       ),
//                     ),
//                     if (newsEntity.image != null)
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: SizedBox(
//                           height: 100,
//                           width: 100,
//                           child: Image.network(newsEntity.image!,
//                               errorBuilder: (context, error, stackTrace) =>
//                                   Image.network(defaultNewsProviderImageUrl),
//                               height: 100,
//                               width: 100,
//                               fit: BoxFit.cover),
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//               Divider(),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(Icons.thumb_up),
//                     Icon(Icons.thumb_down),
//                     Icon(Icons.comment),
//                     Icon(Icons.share),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
