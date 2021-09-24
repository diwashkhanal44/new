import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:you/features/all_utils/cubit/unitcategories_cubit.dart';
import 'package:you/features/all_utils/models/MetalForexModel.dart';

class MetalForex extends StatefulWidget {
  final BuildContext? context;

  const MetalForex({Key? key, this.context}) : super(key: key);

  @override
  _MetalForexState createState() => _MetalForexState();
}

class _MetalForexState extends State<MetalForex> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: BackButton(
          onPressed: () => AutoRouter.of(context).pop(),
        ),
        title: Text("Metal Forex"),
      ),
      body: buildMetalForex(),
    );
  }

  Widget buildMetalForex() {
    return BlocBuilder<UnitcategoriesCubit, UnitcategoriesState>(
      builder: (context, state) {
        if (state.metalForex == null)
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Theme.of(context).accentColor,
              strokeWidth: 1,
            ),
          );

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BuildCard(
                metalTypes: metalType.gold,
                listForexData: state.metalForex,
                rateTola: "${state.metalForex!.data!.tola!.finegold}",
                rateGram: "${state.metalForex!.data!.gram!.finegold}",
                heading: "Gold",
                assetName: "assets/gold.png",
              ),
              BuildCard(
                metalTypes: metalType.tejabiGold,
                listForexData: state.metalForex,
                rateTola: "${state.metalForex!.data!.tola!.tejabigold}",
                rateGram: "${state.metalForex!.data!.gram!.tejabigold}",
                heading: "Tejabi Gold",
                assetName: "assets/crudgold.png",
              ),
              BuildCard(
                metalTypes: metalType.silver,
                listForexData: state.metalForex,
                rateTola: "${state.metalForex!.data!.tola!.silver}",
                rateGram: "${state.metalForex!.data!.gram!.silver}",
                heading: "Silver",
                assetName: "assets/silver.png",
              ),
            ],
          ),
        );
      },
    );
  }
}

enum metalType {
  gold,
  silver,
  tejabiGold,
}

class BuildCard extends StatelessWidget {
  final NepaliDateTime? publishedDate;
  final String? rateTola;
  final String? rateGram;
  final double? changePercentage;
  final MetalForexModel? listForexData;
  final metalType? metalTypes;
  final String? heading;
  final String? assetName;
  final MetalForexModel? metalForexModel;

  const BuildCard({
    Key? key,
    this.publishedDate,
    this.changePercentage,
    this.listForexData,
    this.metalTypes,
    this.heading,
    this.metalForexModel,
    this.assetName,
    this.rateTola,
    this.rateGram,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
      child: Material(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 40,
                      width: 40,
                      child: Image.asset(
                        assetName!,
                      ),
                    ),
                    Text(
                      heading!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "${'Rs. (per tola)'}: $rateTola",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${'Rs. (per tola)'}: $rateGram",
                    style: TextStyle(
                      fontSize: 16,
                    ),
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
