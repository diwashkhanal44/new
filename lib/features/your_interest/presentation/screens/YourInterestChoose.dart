// import 'dart:math';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:you/app_localization.dart';
// import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
// import 'package:you/features/your_interest/domain/entities/Portal.dart';

// import 'YourInterestHome.dart';

// class YourInterestChoose extends HookWidget {
//   YourInterestChoose({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final selectedPortals = useState<List<int>>([]);
//     final selectedCategories = useState<List<int>>([]);

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("News of your choice"),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _SelectedPortal(portals: _portals, selectedPortals: selectedPortals),
//           _SelectedCategory(
//               categories: _categories, selectedCategories: selectedCategories),
//           Spacer(),
//           Center(
//             child: ElevatedButton.icon(
//               icon: Icon(Icons.arrow_forward),
//               onPressed: () {
//                 // AutoRouter.of(context).navigate(YourInterestHome());
//               },
//               label: Text(AppLocalizations.of(context)!.next),
//             ),
//           ),
//           Spacer(),
//         ],
//       ),
//     );
//   }

//   final _categories = [
//     NewsCategories("Latest News", 10),
//     NewsCategories("Economics", 9),
//     NewsCategories("Politics", 8),
//     NewsCategories("Entertainment", 7),
//     NewsCategories("Sports", 6),
//     NewsCategories("World", 5),
//     NewsCategories("Economics", 4),
//     NewsCategories("Economics", 3),
//     NewsCategories("Economics", 2),
//     NewsCategories("Economics", 1),
//   ];

//   final _portals = [
//     Portal(
//         id: 1,
//         logoUrl:
//             "https://www.khabarhub.com/wp-content/themes/Khabarhub/img/logo-main.png",
//         name: "Khabarhub"),
//     Portal(
//         id: 2,
//         logoUrl:
//             "https://www.onlinekhabar.com/wp-content/themes/onlinekhabar-2018/img/logoMain.png",
//         name: "Ratopati"),
//     Portal(
//         id: 3,
//         logoUrl:
//             "https://www.khabarhub.com/wp-content/themes/Khabarhub/img/logo-main.png",
//         name: "Khabarhub"),
//     Portal(
//         id: 4,
//         logoUrl:
//             "https://www.onlinekhabar.com/wp-content/themes/onlinekhabar-2018/img/logoMain.png",
//         name: "Annapurna"),
//     Portal(
//         id: 5,
//         logoUrl:
//             "https://www.khabarhub.com/wp-content/themes/Khabarhub/img/logo-main.png",
//         name: "Khabarhub"),
//     Portal(
//         id: 6,
//         logoUrl:
//             "https://www.onlinekhabar.com/wp-content/themes/onlinekhabar-2018/img/logoMain.png",
//         name: "Ratopati"),
//     Portal(
//         id: 7,
//         logoUrl:
//             "https://www.onlinekhabar.com/wp-content/themes/onlinekhabar-2018/img/logoMain.png",
//         name: "Annapurna"),
//     Portal(
//         id: 8,
//         logoUrl:
//             "https://www.khabarhub.com/wp-content/themes/Khabarhub/img/logo-main.png",
//         name: "Khabarhub"),
//     Portal(
//         id: 9,
//         logoUrl:
//             "https://www.onlinekhabar.com/wp-content/themes/onlinekhabar-2018/img/logoMain.png",
//         name: "Ratopati"),
//     Portal(
//         id: 10,
//         logoUrl:
//             "https://www.onlinekhabar.com/wp-content/themes/onlinekhabar-2018/img/logoMain.png",
//         name: "Annapurna"),
//   ];
// }

// class _SelectedCategory extends StatelessWidget {
//   const _SelectedCategory({
//     Key? key,
//     required List<NewsCategories> categories,
//     required this.selectedCategories,
//   })  : _categories = categories,
//         super(key: key);

//   final List<NewsCategories> _categories;
//   final ValueNotifier<List<int>> selectedCategories;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xffeb1e23),
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Icon(
//                 Icons.add_circle,
//                 color: Colors.white,
//               ),
//               AdaptiveText(
//                 AppLocalizations.of(context)!.chooseCategory,
//                 style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                       color: Colors.white,
//                     ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Wrap(
//               alignment: WrapAlignment.start,
//               spacing: 20,
//               runSpacing: -9,
//               crossAxisAlignment: WrapCrossAlignment.start,
//               runAlignment: WrapAlignment.start,
//               children: _categories
//                   .map(
//                     (e) => Stack(
//                       children: [
//                         TextButton(
//                           onPressed: () {
//                             if (selectedCategories.value.contains(e.id))
//                               selectedCategories.value.remove(e.id);
//                             else
//                               selectedCategories.value.add(e.id);

//                             var pre = selectedCategories.value.toSet();
//                             selectedCategories.value = pre.toList();
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(6),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: Text(
//                               e.name,
//                               style: TextStyle(
//                                   color: selectedCategories.value.contains(e.id)
//                                       ? Colors.black
//                                       : Colors.black45),
//                             ),
//                           ),
//                         ),
//                         if (selectedCategories.value.contains(e.id))
//                           Positioned(
//                             top: 4,
//                             right: 20,
//                             child: CircleAvatar(
//                               backgroundColor: Color(0xffd99435),
//                               radius: 6,
//                               child: Icon(
//                                 Icons.done,
//                                 color: Colors.white,
//                                 size: 10,
//                               ),
//                             ),
//                           )
//                       ],
//                     ),
//                   )
//                   .toList()),
//           SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _SelectedPortal extends StatelessWidget {
//   const _SelectedPortal({
//     Key? key,
//     required List<Portal> portals,
//     required this.selectedPortals,
//   })  : _portals = portals,
//         super(key: key);

//   final List<Portal> _portals;
//   final ValueNotifier<List<int>> selectedPortals;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Theme.of(context).primaryColor,
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Icon(
//                 Icons.add_circle,
//                 color: Colors.white,
//               ),
//               AdaptiveText(
//                 "Select Portal",
//                 style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                       color: Colors.white,
//                     ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Wrap(
//               alignment: WrapAlignment.start,
//               spacing: 20,
//               runSpacing: -9,
//               crossAxisAlignment: WrapCrossAlignment.start,
//               runAlignment: WrapAlignment.start,
//               children: _portals
//                   .map(
//                     (e) => Stack(
//                       children: [
//                         TextButton(
//                           onPressed: () {
//                             if (selectedPortals.value.contains(e.id))
//                               selectedPortals.value.remove(e.id);
//                             else
//                               selectedPortals.value.add(e.id);

//                             var pre = selectedPortals.value.toSet();
//                             selectedPortals.value = pre.toList();
//                           },
//                           child: Container(
//                             padding: EdgeInsets.all(6),
//                             constraints: BoxConstraints(
//                                 minWidth:
//                                     Random.secure().nextInt(80).toDouble()),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: Opacity(
//                               opacity:
//                                   selectedPortals.value.contains(e.id) ? 1 : .7,
//                               child: Image.network(
//                                 e.logoUrl,
//                                 height: 15,
//                                 scale: .5,
//                                 fit: BoxFit.fitHeight,
//                               ),
//                             ),
//                           ),
//                         ),
//                         if (selectedPortals.value.contains(e.id))
//                           Positioned(
//                             top: 4,
//                             right: 20,
//                             child: CircleAvatar(
//                               backgroundColor: Color(0xffd99435),
//                               radius: 6,
//                               child: Icon(
//                                 Icons.done,
//                                 color: Colors.white,
//                                 size: 10,
//                               ),
//                             ),
//                           )
//                       ],
//                     ),
//                   )
//                   .toList()),
//           SizedBox(
//             height: 20,
//           ),
//         ],
//       ),
//     );
//   }
// }
