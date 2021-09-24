import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/features/all_utils/cubit/unitcategories_cubit.dart';

import '../models/UnitCategory.dart';
import '../models/Units.dart';

class UnitConverter extends StatefulWidget {
  final String categoryIndex;

  UnitConverter({@PathParam('categoryIndex') required this.categoryIndex});

  @override
  _UnitConverterState createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  late Unit _fromValue;
  late Unit _toValue;
  double? _inputValue;
  String _convertedValue = '';
  late Category category;

  final scaffoldGlobalKey = GlobalKey();

  bool addPeriod = false;
  @override
  void initState() {
    super.initState();

    category = BlocProvider.of<UnitcategoriesCubit>(context)
        .state
        .unitCategories[int.parse(widget.categoryIndex.characters.first)];

    _inputValue = 1;
    _setDefaults();
    _updateConversion();

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

  @override
  void didUpdateWidget(UnitConverter old) {
    super.didUpdateWidget(old);

    // We update our [DropdownMenuItem] units when we switch [Categories].

    if (BlocProvider.of<UnitcategoriesCubit>(context)
            .state
            .unitCategories[int.parse(widget.categoryIndex.characters.first)] !=
        category) {
      _setDefaults();
      if (_inputValue != null) _updateConversion();
    }
  }

  String _format(double conversion) {
    var outputNum = conversion.toStringAsPrecision(7);
    if (outputNum.contains('.') && outputNum.endsWith('0')) {
      var i = outputNum.length - 1;
      while (outputNum[i] == '0') {
        i -= 1;
      }
      outputNum = outputNum.substring(0, i + 1);
    }

    if (outputNum.endsWith('.')) {
      return outputNum.substring(0, outputNum.length - 1);
    }

    return outputNum;
  }

  Future<void> _updateConversion() async {
    setState(() {
      _convertedValue = _format(
          _inputValue! * (_toValue.conversion! / _fromValue.conversion!));
    });
  }

  void _setDefaults() {
    setState(() {
      _fromValue = category.units[0];
      _toValue = category.units[1];
    });
  }

  Unit _getUnit(String unitName) {
    return category.units.firstWhere(
      (Unit unit) {
        return unit.name == unitName;
      },
      orElse: null,
    );
  }

  // ignore: unused_element
  void _updateFromConversion(dynamic unitName) {
    setState(() {
      _fromValue = _getUnit(unitName);
    });
    // to change the input according to current from conversion unit
    if (_inputValue != null) {
      _updateConversion();
    }
  }

  // ignore: unused_element
  void _updateToConversion(dynamic unitName) {
    setState(() {
      _toValue = _getUnit(unitName);
    });
    // to change the input according to current from conversion unit
    if (_inputValue != null) {
      _updateConversion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldGlobalKey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => AutoRouter.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black),
          ),
          title: Text(
            category.name + ' conversion',
            style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? Theme.of(context).scaffoldBackgroundColor
              : Colors.white10,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        body: buildUi());
  }

  // here is from is to deternmine from which unit is to select ? from or to
  showBottomSheets(bool isFrom) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: scaffoldGlobalKey.currentContext!,
        builder: (context) {
          return Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * .75),
            child: Wrap(
              children: category.units
                  .map((e) => InkWell(
                        onTap: () {
                          AutoRouter.of(context).pop();

                          isFrom ? _fromValue = e : _toValue = e;
                          setState(() {
                            _updateConversion();
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(e.name!),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          );
        });
  }

  Widget buildUi() {
    return Column(
      children: [
        buildExpandedInput(),
        Divider(),
        buildExpandedKeyboard(),
      ],
    );
  }

  Expanded buildExpandedKeyboard() {
    return Expanded(
        flex: 3,
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 9,
                  child: Column(
                    children: [
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 9,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                MediaQuery.of(context).size.width / 3,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 30),
                        itemBuilder: (context, index) {
                          return Center(
                              child: IconButton(
                            iconSize: 10,
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              if (addPeriod) {
                                if (_inputValue.toString().split('.')[1] ==
                                    '0') {
                                  _inputValue = double.parse(
                                      _inputValue!.toInt().toString() +
                                          '.' +
                                          (index + 1).toString());
                                } else {
                                  _inputValue = double.parse(
                                      _inputValue.toString() +
                                          (index + 1).toString());
                                }
                              } else {
                                _inputValue = double.parse(
                                    _inputValue!.toInt().toString() +
                                        (index + 1).toString());
                              }
                              setState(() {
                                _updateConversion();
                              });
                            },
                            icon: Center(
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ));
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 60,
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent:
                                      MediaQuery.of(context).size.width / 3,
                                  childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 30),
                          children: [
                            Text(
                              '',
                              style: TextStyle(fontSize: 30),
                            ),
                            Center(
                              child: IconButton(
                                iconSize: 10,
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  if (_inputValue.toString().split('.')[1] ==
                                      '0') {}

                                  _inputValue = double.parse(
                                      _inputValue!.toInt().toString() +
                                          0.toString());
                                  setState(() {
                                    _updateConversion();
                                  });
                                },
                                icon: Center(
                                  child: Text(
                                    "0",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                                child: IconButton(
                              iconSize: 10,
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                addPeriod = true;
                              },
                              icon: Center(
                                child: Text(
                                  ".",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: clearAll,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26),
                          height: MediaQuery.of(context).size.height * .2,
                          child: Center(child: Text("AC")),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: deleteLast,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26),
                          height: MediaQuery.of(context).size.height * .2,
                          child: Center(child: Icon(Icons.backspace_outlined)),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ],
        ));
  }

  Expanded buildExpandedInput() {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showBottomSheets(true);
                    },
                    child: Row(
                      children: [
                        Text(_fromValue.name!),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                  Text("$_inputValue")
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  showBottomSheets(false);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(_toValue.name!),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    Text("$_convertedValue")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  deleteLast() {
    var newInput;

    if (_inputValue! < 10) {
      newInput = "0";
    } else if (_inputValue.toString().split('.')[1] == '0') {
      newInput = _inputValue
          .toString()
          .substring(0, _inputValue.toString().length - 3);
    } else {
      newInput = _inputValue
          .toString()
          .substring(0, _inputValue.toString().length - 1);
    }

    _inputValue = double.parse(newInput);
    setState(() {
      _updateConversion();
    });
  }

  clearAll() {
    addPeriod = false;

    setState(() {
      _inputValue = 0;
      _updateConversion();
    });
  }
}
