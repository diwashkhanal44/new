import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'cubit/unitcategories_cubit.dart';
import 'models/UnitCategory.dart';

class AllUtilsWrapper extends StatelessWidget {
  const AllUtilsWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnitcategoriesCubit, UnitcategoriesState>(
      builder: (context, state) {
        if (state is UnitcategoriesStateInitial)
          BlocProvider.of<UnitcategoriesCubit>(context)
              .getCategories(context: context);

        if (state is UnitcategoriesStateLoaded) return AutoRouter();
        return AutoRouter();
      },
    );
  }
}

class Utilities extends StatefulWidget {
  @override
  _UtilitiesState createState() => _UtilitiesState();
}

class _UtilitiesState extends State<Utilities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => AutoRouter.of(context).pop(),
        ),
        title: Text(
          "Utilities",
          style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Theme.of(context).scaffoldBackgroundColor
            : Theme.of(context).scaffoldBackgroundColor,
      ),
      body: BlocProvider.of<UnitcategoriesCubit>(context)
              .state
              .unitCategories
              .isEmpty
          ? Container()
          : GridView(
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              children: [
                buildTile(context, "QR-Scanner", "assets/Archive/qr-code.svg",
                    null, null, "UTILS_QR_SCANNER_SCREEN"),
                buildTile(context, "Compass", "assets/Archive/compass.svg",
                    null, null, "UTILS_COMPASS_SCREEN"),
                buildTile(context, "Date", "assets/Archive/calendar.svg", null,
                    null, "UTILS_DATE_CONVERTER_SCREEN"),
                buildTile(
                    context,
                    "Data",
                    "assets/Archive/data.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories[5],
                    5,
                    "UTILS_DATA_CONVETER_SCREEN"),
                buildTile(context, "BMI", "assets/Archive/bmi.svg", null, null,
                    "UTILS_BMI_CALULATER_SCREEN"),
                buildTile(context, "Age", "assets/Archive/birthday-cake.svg",
                    null, null, "UTILS_AGE_CALCULATOR_SCREEN"),
                buildTile(context, "Discount", "assets/Archive/price-tag.svg",
                    null, null, "UTILS_DISCOUNT_CALCULATOR_SCREEN"),
                buildTile(
                    context,
                    "Length",
                    "assets/Archive/ruler.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories
                        .first,
                    0,
                    "UTILS_LENGTH_CONVERTER_SCREEN"),
                buildTile(
                    context,
                    "Area",
                    "assets/Archive/area.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories[1],
                    1,
                    "UTILS_AREA_CALCULATOR_SCREEN"),
                buildTile(
                    context,
                    "Volume",
                    "assets/Archive/volume.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories[2],
                    2,
                    "UTILS_VOLUME_CALCULATOR_SCREEN"),
                buildTile(
                    context,
                    "Speed",
                    "assets/Archive/speedometer.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories[7],
                    7,
                    "UTILS_SPEED_CALCULATOR_SCREEN"),
                buildTile(
                    context,
                    "Time",
                    "assets/Archive/wall-clock.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories[4],
                    4,
                    "UTILS_TIME_CALCULATOR_SCREEN"),
                buildTile(
                    context,
                    "Mass",
                    "assets/Archive/scale.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories[3],
                    3,
                    "UTILS_WEIGHT_CALCULATOR_SCREEN"),
                buildTile(
                    context,
                    "Numeral System",
                    "assets/Archive/binary-code.svg",
                    null,
                    null,
                    "UTILS_NUMEBER_STYSTEM_SCREEN"),
                buildTile(context, "Temperature", "assets/Archive/heat.svg",
                    null, null, "UTILS_TEMP_CONVERTER_SCREEN"),
                buildTile(
                  context,
                  "Vegetables",
                  "assets/Archive/vegetable.svg",
                  null,
                  null,
                  "UTILS_KALIMATI_VEGTABLE_SCREEN",
                ),
                buildTile(
                    context,
                    "Energy",
                    "assets/Archive/energy.svg",
                    BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories[6],
                    6,
                    "UTILS_ENERGY_CONVERTER_SCREEN"),
                if (BlocProvider.of<UnitcategoriesCubit>(context)
                        .state
                        .unitCategories
                        .length >
                    8)
                  buildTile(
                      context,
                      "Currency",
                      "assets/Archive/forex.svg",
                      BlocProvider.of<UnitcategoriesCubit>(context)
                          .state
                          .unitCategories[8],
                      8,
                      "UTILS_CURRENCY_CONVERTER_SCREEN"),
              ],
            ),
    );
  }

  buildTile(BuildContext context, String title, String imageUrl, Category? data,
      int? index, String path) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: InkWell(
          onTap: () {
            if (index == null) {
              AutoRouter.of(context).pushNamed(path);
              return;
            }

            AutoRouter.of(context).pushNamed('$path/$index}');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imageUrl,
                width: 26,
                height: 26,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : null,
              ),
              SizedBox(
                height: 10,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
