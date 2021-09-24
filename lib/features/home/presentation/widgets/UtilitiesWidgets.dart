import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reorderables/reorderables.dart';
import 'package:you/features/all_utils/cubit/unitcategories_cubit.dart';

class UtilitiesWidgets extends StatelessWidget {
  const UtilitiesWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnitcategoriesCubit, UnitcategoriesState>(
      builder: (context, state) {
        if (state is UnitcategoriesStateInitial)
          BlocProvider.of<UnitcategoriesCubit>(context)
              .getCategories(context: context);

        if (state is UnitcategoriesStateLoaded) return _UtilitiesWidgets();
        return Container();
      },
    );
  }
}

class _UtilitiesWidgets extends HookWidget {
  final List<Color> colors = [
    Color(0xff4E5452),
    Color(0xff5E2129),
    Color(0xff9D9101),
    Color(0xffDC9D00),
    Color(0xff6C7156),
    Color(0xffF54021),
    Color(0xffE63244),
    Color(0xff75151E),
    Color(0xff193737),
    Color(0xff316650),
    Color(0xffc4D7D7),
    Color(0xff2C5545),
    Color(0xffCB2821),
    Color(0xff8F8B66),
    Color(0xffEA899A),
    Color(0xff332F2C),
    Color(0xff6A5F31),
    Color(0xff354D73),
  ];

  @override
  Widget build(BuildContext context) {
    final _tiles = useState(
      [
        buildTile(context, "QR-Scanner", "assets/Archive/qr-code.svg",
            colors[0], null, "UTILS_QR_SCANNER_SCREEN"),
        buildTile(context, "Temperature", "assets/Archive/heat.svg", colors[14],
            null, "UTILS_TEMP_CONVERTER_SCREEN"),
        buildTile(context, "Date", "assets/Archive/calendar.svg", colors[2],
            null, "UTILS_DATE_CONVERTER_SCREEN"),
        buildTile(context, "BMI", "assets/Archive/bmi.svg", colors[4], null,
            "UTILS_BMI_CALULATER_SCREEN"),
        buildTile(context, "Length", "assets/Archive/ruler.svg", colors[7], 0,
            "UTILS_LENGTH_CONVERTER_SCREEN"),
        buildTile(context, "Compass", "assets/Archive/compass.svg", colors[1],
            null, "UTILS_COMPASS_SCREEN"),
        buildTile(context, "Discount", "assets/Archive/price-tag.svg",
            colors[6], null, "UTILS_DISCOUNT_CALCULATOR_SCREEN"),
        buildTile(context, "Volume", "assets/Archive/volume.svg", colors[9], 2,
            "UTILS_VOLUME_CALCULATOR_SCREEN"),
        buildTile(context, "Age", "assets/Archive/birthday-cake.svg", colors[5],
            null, "UTILS_AGE_CALCULATOR_SCREEN"),
        buildTile(context, "Area", "assets/Archive/area.svg", colors[8], 1,
            "UTILS_AREA_CALCULATOR_SCREEN"),
        buildTile(context, "Speed", "assets/Archive/speedometer.svg",
            colors[10], 7, "UTILS_SPEED_CALCULATOR_SCREEN"),
        buildTile(context, "Time", "assets/Archive/wall-clock.svg", colors[11],
            4, "UTILS_TIME_CALCULATOR_SCREEN"),
        buildTile(context, "Mass", "assets/Archive/scale.svg", colors[12], 3,
            "UTILS_WEIGHT_CALCULATOR_SCREEN"),
        buildTile(context, "Data", "assets/Archive/data.svg", colors[3], 5,
            "UTILS_DATA_CONVETER_SCREEN"),
        buildTile(context, "Energy", "assets/Archive/energy.svg", colors[16], 6,
            "UTILS_ENERGY_CONVERTER_SCREEN"),
        buildTile(context, "Numeral System", "assets/Archive/binary-code.svg",
            colors[13], null, "UTILS_NUMEBER_STYSTEM_SCREEN"),
        if (BlocProvider.of<UnitcategoriesCubit>(context)
                .state
                .unitCategories
                .length >
            8)
          buildTile(context, "Currency", "assets/Archive/forex.svg", colors[17],
              8, "UTILS_CURRENCY_CONVERTER_SCREEN"),
      ],
    );

    return Container(
      height: 110,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 16),
      child: ReorderableWrap(
          buildDraggableFeedback: buildDraggableFeedBack,
          direction: Axis.vertical,
          scrollDirection: Axis.horizontal,
          runSpacing: 5,
          spacing: 5,
          onReorder: (int oldIndex, int newIndex) {
            final row = _tiles.value.removeAt(oldIndex);
            _tiles.value.insert(newIndex, row);
          },
          children: _tiles.value),
    );
  }

  Widget buildDraggableFeedBack(
          BuildContext context, BoxConstraints constraints, Widget child) =>
      Transform(
        transform: new Matrix4.rotationZ(0),
        alignment: FractionalOffset.topLeft,
        child: Material(
          child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ConstrainedBox(constraints: constraints, child: child),
              )),
          color: Colors.transparent,
          borderRadius: BorderRadius.zero,
        ),
      );

  Widget buildTile(BuildContext context, String title, String imageUrl,
      Color color, int? index, String path) {
    return TextButton(
      style: Theme.of(context).textButtonTheme.style!.copyWith(
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
          padding:
              MaterialStateProperty.resolveWith((states) => EdgeInsets.zero)),
      onPressed: () {
        if (index == null) {
          AutoRouter.of(context).pushNamed('all-utils-wrapper/' + path);
          return;
        }

        AutoRouter.of(context)
            .pushNamed('all-utils-wrapper/' + '$path/$index}');
      },
      child: Container(
        // constraints: BoxConstraints(minWidth: 100),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                imageUrl,
                width: 26,
                height: 26,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}

// class UtilsCard extends StatelessWidget {
//   final Color color;
//   final String title;
//   final String titleNepali;

//   const UtilsCard(
//       {Key? key,
//       required this.color,
//       required this.title,
//       required this.titleNepali})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 55,
//       margin: EdgeInsets.symmetric(horizontal: 8),
//       child: TextButton(
//         style: Theme.of(context).textButtonTheme.style!.copyWith(
//             padding:
//                 MaterialStateProperty.resolveWith((states) => EdgeInsets.zero)),
//         onPressed: () {
//           AutoRouter.of(context).push(AllUtilsWrapper());
//         },
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircleAvatar(
//               backgroundColor: color,
//               child: Icon(Icons.add, color: Colors.white, size: 40),
//             ),
//             SizedBox(width: 10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(titleNepali, style: Theme.of(context).textTheme.subtitle2),
//                 AdaptiveText(title,
//                     style: Theme.of(context).textTheme.subtitle2),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
