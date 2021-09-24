import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:you/features/all_utils/cubit/unitcategories_cubit.dart';
import 'package:you/features/all_utils/models/CurrencyForexModel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class RateDate {
  final Rate? rate;
  final DateTime? dateTime;

  RateDate(this.rate, this.dateTime);
}

class CurrencyForexScreen extends StatefulWidget {
  @override
  _CurrencyForexState createState() => _CurrencyForexState();
}

class _CurrencyForexState extends State<CurrencyForexScreen> {
  late List<RateDate> graphData;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  getCurrencyData(CurrencyForexModel? currencyForexDate) async {
    graphData = getTheDataOfLastSevenDays('USD', currencyForexDate);
  }

  List<RateDate> getTheDataOfLastSevenDays(
      String? selectedCurrency, CurrencyForexModel? currencyForexDate) {
    List<RateDate> selectedCurrencyDateOfLastSevenDays =
        currencyForexDate!.data!.payload!.reversed.map((element) {
      Rate? selectedCurrencyData;

      for (int i = 0; i < element.rates!.length; i++) {
        if (element.rates![i].currency!.iso3 == selectedCurrency) {
          selectedCurrencyData = element.rates![i];
          break;
        }
      }
      element.rates!.map((e) {});

      return RateDate(selectedCurrencyData, element.date);
    }).toList();

    return selectedCurrencyDateOfLastSevenDays;
  }

  late CurrencyDataSource _currencyDataSource;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnitcategoriesCubit, UnitcategoriesState>(
      builder: (context, state) {
        if (state.currencyForexDate == null) {
          return Center(child: CircularProgressIndicator(strokeWidth: 1));
        }
        getCurrencyData(state.currencyForexDate);

        _currencyDataSource = CurrencyDataSource(
            state.searchedForex?.first.rates ??
                state.currencyForexDate!.data!.payload!.reversed
                    .toList()[0]
                    .rates!);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.light),
              title: Text(
                  '${graphData[0].rate!.currency!.name!} (${graphData[0].rate!.currency!.iso3!})'),
              centerTitle: true,
              foregroundColor: Colors.white,
              leading:
                  BackButton(onPressed: () => AutoRouter.of(context).pop()),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        BlocProvider.of<UnitcategoriesCubit>(context)
                            .searchCurrency(value);
                      } else {
                        BlocProvider.of<UnitcategoriesCubit>(context)
                            .clearSearchCurrency();
                      }
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear, color: Colors.white),
                          onPressed: () => {
                            BlocProvider.of<UnitcategoriesCubit>(context)
                                .clearSearchCurrency()
                          },
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: "Search Here..."),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        BotToast.showText(text: "Featching Data");
                        BlocProvider.of<UnitcategoriesCubit>(context)
                            .getCurrencyData();
                      },
                      child: Icon(Icons.refresh)),
                ),
              ],
            ),
            body: state.currencyForexDate == null
                ? Center(
                    child: CircularProgressIndicator(
                        strokeWidth: 2,
                        backgroundColor: Theme.of(context).accentColor),
                  )
                : SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          if (state.searchedForex == null)
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Selling Rs. ${graphData[0].rate!.sell.toString()} per ${graphData[0].rate!.currency!.unit} unit.",
                                        style: TextStyle(),
                                      ),
                                      Text(
                                        "Buying Rs. ${graphData[0].rate!.buy.toString()} per ${graphData[0].rate!.currency!.unit} unit.",
                                        style: TextStyle(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (state.searchedForex == null)
                            Container(
                              height: MediaQuery.of(context).size.height / 3.5,
                              child: ClipRRect(
                                child: SfCartesianChart(
                                    tooltipBehavior:
                                        TooltipBehavior(enable: true),
                                    legend: Legend(
                                        isVisible: true,
                                        position: LegendPosition.bottom,
                                        overflowMode:
                                            LegendItemOverflowMode.wrap),
                                    primaryXAxis: CategoryAxis(
                                      isVisible: false,
                                      rangePadding: ChartRangePadding.none,
                                      labelAlignment: LabelAlignment.end,
                                      axisLine: AxisLine(width: 0),
                                      majorTickLines: MajorTickLines(width: 0),
                                      majorGridLines: MajorGridLines(width: 0),
                                    ),
                                    primaryYAxis: NumericAxis(
                                        isVisible: false,
                                        //
                                        edgeLabelPlacement:
                                            EdgeLabelPlacement.shift,
                                        majorGridLines:
                                            MajorGridLines(width: 0)),
                                    borderColor: Colors.transparent,
                                    borderWidth: 0,
                                    plotAreaBorderColor: Colors.transparent,
                                    series: <LineSeries<RateDate, String>>[
                                      LineSeries(
                                          name: "Selling",
                                          // color: Colors.green,
                                          enableTooltip: true,
                                          // borderWidth: 0,
                                          animationDuration: 2500,
                                          width: 2,
                                          dataSource: graphData,
                                          xValueMapper: (RateDate rate, _) =>
                                              (NepaliDateFormat.LLL(
                                                          Language.english)
                                                      .format(rate.dateTime!
                                                          .toNepaliDateTime()) +
                                                  " " +
                                                  NepaliDateFormat.d(
                                                          Language.english)
                                                      .format(
                                                    rate.dateTime!
                                                        .toNepaliDateTime(),
                                                  )),
                                          yValueMapper: (RateDate rate, _) =>
                                              double.tryParse(
                                                  rate.rate!.sell!)),
                                      LineSeries(
                                          name: "Buying",
                                          enableTooltip: true,
                                          animationDuration: 2500,
                                          width: 2,
                                          dataSource: graphData,
                                          xValueMapper: (RateDate rate, _) =>
                                              (NepaliDateFormat.LLL(
                                                          Language.english)
                                                      .format(rate.dateTime!
                                                          .toNepaliDateTime()) +
                                                  " " +
                                                  NepaliDateFormat.d(
                                                          Language.english)
                                                      .format(
                                                    rate.dateTime!
                                                        .toNepaliDateTime(),
                                                  )),
                                          yValueMapper: (RateDate rate, _) =>
                                              double.tryParse(rate.rate!.buy!)),
                                    ]),
                              ),
                            ),
                          if (_currencyDataSource._rates.isNotEmpty)
                            SizedBox(
                              height:
                                  50.0 * _currencyDataSource.rows.length + 50,
                              child: SfDataGrid(
                                verticalScrollPhysics:
                                    NeverScrollableScrollPhysics(),
                                columnWidthMode: ColumnWidthMode.lastColumnFill,
                                onSelectionChanged: (data, data1) {
                                  graphData = getTheDataOfLastSevenDays(
                                      data[0].getCells()[0].value,
                                      state.currencyForexDate);

                                  setState(() {});
                                },
                                selectionMode: SelectionMode.single,
                                source: _currencyDataSource,
                                columns: [
                                  GridColumn(
                                      columnName: 'flag',
                                      label: Center(child: Text('Flag'))),
                                  GridColumn(
                                      columnName: 'name',
                                      label: Center(child: Text('Name'))),
                                  GridColumn(
                                      columnName: 'unit',
                                      label: Center(child: Text('Unit'))),
                                  GridColumn(
                                      columnName: 'sell',
                                      label: Center(child: Text('Selling'))),
                                  GridColumn(
                                      columnName: 'buy',
                                      label: Center(child: Text('Buying'))),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class CurrencyDataSource extends DataGridSource {
  late List<DataGridRow> _rates;

  CurrencyDataSource(List<Rate> rates) {
    _rates = rates
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: 'flag', value: "${e.currency!.iso3}"),

              DataGridCell<String>(columnName: 'name', value: e.currency!.name),
              DataGridCell<String>(
                  columnName: 'unit', value: e.currency!.unit.toString()),
              DataGridCell<String>(
                  columnName: 'sell', value: e.sell.toString()),
              // DataGridCell<String>(columnName: 'iso', value: e.currency.iso3),
              DataGridCell<String>(columnName: 'buy', value: e.buy.toString()),
            ]))
        .toList();
  }

  @override
  List<DataGridRow> get rows => _rates;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      if (dataGridCell.columnName == 'flag')
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
              "assets/flags/${dataGridCell.value.toLowerCase()}.svg"),
        );

      return Align(
          alignment: (dataGridCell.columnName == 'name')
              ? Alignment.centerLeft
              : Alignment.center,
          child: Text(dataGridCell.value.toString()));
    }).toList());
  }
}
