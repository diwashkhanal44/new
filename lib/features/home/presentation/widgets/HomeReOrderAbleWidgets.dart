import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reorderables/reorderables.dart';
import 'package:timeago/timeago.dart';
import 'package:you/features/all_utils/cubit/unitcategories_cubit.dart';
import 'package:you/features/all_utils/models/CurrencyForexModel.dart';

class HomeReOrderAbleWidgets extends HookWidget {
  const HomeReOrderAbleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tiles = useState<List<Widget>>(
      [
        BlocBuilder<UnitcategoriesCubit, UnitcategoriesState>(
          builder: (context, state) {
            if (state.metalForex?.data?.gram?.finegold == null)
              return CircularProgressIndicator(strokeWidth: 1);
            return _ReOrderAbleWidget(
                image: "assets/gold.svg",
                title: "Finegold (Tola) ",
                data: "Rs. ${state.metalForex?.data?.gram?.finegold}",
                backgroundColor: Color(0xffb89999),
                publishedDate: state.metalForex!.updated_at ??
                    state.metalForex!.created_at,
                onTap: () {
                  AutoRouter.of(context)
                      .pushNamed('all-utils-wrapper/' + 'UTILS_METAL_FOREX');
                  // showDialog(
                  // context: context,
                  // builder: (context) {
                  // return MetalForex(
                  // isDialog: true,
                  // );
                  // },
                  // );
                });
          },
        ),
        // _ReOrderAbleWidget(
        //     image: "assets/share_market.svg",
        //     title: "सेयर बजार",
        //     data: "३० अन्कले बढ्यो",
        //     backgroundColor: Color(0xff197db5),
        //     publishedData: DateTime.now(),
        //     onTap: () {}),
        // _ReOrderAbleWidget(
        //     image: "assets/share_market.svg",
        //     title: "सेयर बजार",
        //     data: "३० अन्कले बढ्यो",
        //     backgroundColor: Color(0xff197db5),
        //     publishedData: DateTime.now(),
        //     onTap: () {}),

        BlocBuilder<UnitcategoriesCubit, UnitcategoriesState>(
          builder: (context, state) {
            if (state.currencyForexDate == null)
              return CircularProgressIndicator(strokeWidth: 1);

            Rate? selectedCurrencyData;

            for (int i = 0;
                i < state.currencyForexDate!.data!.payload![0].rates!.length;
                i++) {
              if (state.currencyForexDate!.data!.payload![0].rates![i].currency!
                      .iso3 ==
                  "USD") {
                selectedCurrencyData =
                    state.currencyForexDate!.data!.payload![0].rates![i];
                break;
              }
            }

            return _ReOrderAbleWidget(
                image: "assets/currency.svg",
                title: "Foreign exg. rate",
                data: "USD 1 = Rs ${selectedCurrencyData?.sell}",
                backgroundColor: Color(0xff789402),
                publishedDate:
                    state.currencyForexDate!.data!.payload![0].modifiedOn,
                onTap: () {
                  AutoRouter.of(context)
                      .pushNamed('all-utils-wrapper/' + 'UTILS_CURRENCY_FOREX');
                });
          },
        ),

        _ReOrderAbleWidget(
            image: "assets/Archive/vegetable.svg",
            title: "Kalimati\nVegtable",
            data: "",
            backgroundColor: Color(0xff789402),
            publishedDate: null,
            onTap: () {
              AutoRouter.of(context).pushNamed(
                  'all-utils-wrapper/' + 'UTILS_KALIMATI_VEGTABLE_SCREEN');
            }),
      ],
    );

    return Container(
      height: 133,
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
}

class _ReOrderAbleWidget extends StatelessWidget {
  final String image;
  final String title;
  final String data;
  final DateTime? publishedDate;
  final VoidCallback onTap;
  final Color? backgroundColor;

  const _ReOrderAbleWidget(
      {Key? key,
      this.backgroundColor,
      required this.image,
      required this.title,
      required this.data,
      this.publishedDate,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        style: Theme.of(context).textButtonTheme.style!.copyWith(
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            padding:
                MaterialStateProperty.resolveWith((states) => EdgeInsets.zero)),
        onPressed: onTap,
        child: Container(
          height: 63,
          constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width / 2 - 20),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 45, width: 45, child: SvgPicture.asset(image)),
              SizedBox(width: 5),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 12,
                        ),
                  ),
                  if (data.isNotEmpty)
                    Text(
                      data,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  Text(
                    publishedDate == null
                        ? "Today"
                        : "Updated ${format(publishedDate!)}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 10),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
