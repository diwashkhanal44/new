import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:you/features/all_utils/extra/TemperatureConverterSystem.dart';

class TemperatureScreen extends StatefulWidget {
  @override
  _TemperatureScreenState createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  double _inputValue = 100;
  double _output = 10;
  bool addPeriod = false;

  TemperatureUnit? _fromValue;
  TemperatureUnit? _toValue;

  @override
  void initState() {
    //default conversion
    _fromValue = TemperatureUnit.Celsius;
    _toValue = TemperatureUnit.Fahrenheit;

    _updateConversion();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => AutoRouter.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black),
        ),
        title: Text(
          'Temperature Converter',
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
      body: buildUi(),
    );
  }

  _updateConversion() {
    _output = TemperatureConverter().convert(
        _inputValue,
        _fromValue ?? TemperatureUnit.Celsius,
        _toValue ?? TemperatureUnit.Fahrenheit);
    setState(() {});
  }

  Widget buildUi() {
    return Column(
      children: [
        Expanded(
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
                        child: Text(describeEnum(_fromValue!)),
                      ),
                      Text(
                        "$_inputValue",
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showBottomSheets(false);
                        },
                        child: Text(describeEnum(_toValue!)),
                      ),
                      Text(
                        "$_output",
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        Divider(),
        // input field
        Expanded(
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
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
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
                                          _inputValue.toInt().toString() +
                                              '.' +
                                              (index + 1).toString());
                                    } else {
                                      _inputValue = double.parse(
                                          _inputValue.toString() +
                                              (index + 1).toString());
                                    }
                                  } else {
                                    _inputValue = double.parse(
                                        _inputValue.toInt().toString() +
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
                                      if (_inputValue
                                              .toString()
                                              .split('.')[1] ==
                                          '0') {}

                                      _inputValue = double.parse(
                                          _inputValue.toInt().toString() +
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
                              child:
                                  Center(child: Icon(Icons.backspace_outlined)),
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
            )),
      ],
    );
  }

  deleteLast() {
    var newInput;

    if (_inputValue < 10) {
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
    setState(() {
      addPeriod = false;

      _inputValue = 0;
      _updateConversion();
    });
  }

  showBottomSheets(bool isFrom) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Wrap(
            children: TemperatureUnit.values
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
                            Text(describeEnum(e)),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          );
        });
  }
}
