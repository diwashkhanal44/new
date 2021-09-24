import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/all_utils/models/SpecificDataVegtables.dart';
import 'package:you/features/all_utils/repo/KalimatiVegtableData.dart';

class KalimatiVegetables extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final search = TextEditingController();
    return ChangeNotifierProvider<KalimatiVegtablePriceProvider>(
        create: (context) => sl<KalimatiVegtablePriceProvider>(),
        builder: (context, child) {
          return Consumer<KalimatiVegtablePriceProvider>(
              builder: (context, data, child) {
            if (data.todaysVegtableList == null) {
              return Center(child: CircularProgressIndicator(strokeWidth: 1));
            }
            return GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Scaffold(
                    appBar: AppBar(
                      leading: BackButton(
                        color: Colors.white,
                        onPressed: () => AutoRouter.of(context).pop(),
                      ),
                      elevation: 0,
                      bottom: PreferredSize(
                          preferredSize: Size.fromHeight(100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextField(
                                    controller: search,
                                    onChanged: (value) {
                                      if (value.isNotEmpty) {
                                        Provider.of<KalimatiVegtablePriceProvider>(
                                                context,
                                                listen: false)
                                            .searchResults(value);
                                      } else {
                                        Provider.of<KalimatiVegtablePriceProvider>(
                                                context,
                                                listen: false)
                                            .clearSearch();
                                      }
                                    },
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            Icons.clear,
                                            color: Colors.white,
                                          ),
                                          onPressed: () => {
                                            Provider.of<KalimatiVegtablePriceProvider>(
                                                    context,
                                                    listen: false)
                                                .clearSearch(),
                                            search.clear()
                                          },
                                        ),
                                        labelText: "Search Here...")),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Text(
                                          "name",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          "unit",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          'max (Rs.)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          'min (Rs.)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          'avg (Rs.)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      title: Text(
                        'Vegtable Price (Kalimati)',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    body: buildTable(context, data)));
          });
        });
  }

  GridView buildTiles(
      KalimatiVegtablePriceProvider data, BuildContext context) {
    return GridView.builder(
        itemCount: data.todaysVegtableList!.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
            childAspectRatio: 1,
            crossAxisSpacing: 0,
            mainAxisSpacing: 5),
        itemBuilder: (context, index) =>
            buildVegTableCard(context, data, index));
  }

  Widget buildTable(BuildContext context, KalimatiVegtablePriceProvider data) {
    return Column(
      children: [
        if (data.searchedList == null)
          Expanded(child: _table(data.todaysVegtableList ?? []))
        else
          Expanded(child: _table(data.searchedList ?? [])),
      ],
    );
  }

  Widget _table(List<Vegtable> data) {
    if (data.isEmpty) {
      return Center(child: Text("No Data Available"));
    }
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.network(
                      data[index].image!,
                      height: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(child: Text(data[index].vegetable!)),
                  ],
                )),
            Expanded(flex: 1, child: Text(data[index].unit!)),
            Expanded(flex: 1, child: Text(data[index].min!)),
            Expanded(flex: 1, child: Text(data[index].max!)),
            Expanded(flex: 1, child: Text(data[index].avg!))
          ],
        ),
      ),
    );
  }

  Padding buildVegTableCard(
      BuildContext context, KalimatiVegtablePriceProvider data, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SvgPicture.network(
                    data.todaysVegtableList![index].image!,
                    height: 30,
                  ),
                  Text(
                    data.todaysVegtableList![index].vegetable! +
                        ' (per ${data.todaysVegtableList![index].unit})',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rs. ' + data.todaysVegtableList![index].min!),
                  Text('Rs. ' + data.todaysVegtableList![index].max!),
                  Text('Rs. ' + data.todaysVegtableList![index].avg!)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("min"), Text('max'), Text('avg')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
