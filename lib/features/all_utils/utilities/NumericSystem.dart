import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:you/features/all_utils/extra/NumericSystem.dart';

class NumericalSystemScreen extends StatefulWidget {
  @override
  _NumericalSystemScreenState createState() => _NumericalSystemScreenState();
}

class _NumericalSystemScreenState extends State<NumericalSystemScreen> {
  String _inputValue = '10';

  late String _output;

  NumberSystem? _fromValue;
  NumberSystem? _toValue;

  @override
  void initState() {
    super.initState();

    //default conversion
    _fromValue = NumberSystem.Decimal;
    _toValue = NumberSystem.Binary;

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
          'Numeral System',
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
    _output =
        NumberSystemConverter().convert(_inputValue, _fromValue, _toValue);

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
                        "${_inputValue.toUpperCase()}",
                        style: TextStyle(color: Colors.redAccent),
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
                        "${_output.toUpperCase()}",
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Expanded(
          flex: 4,
          child: GridView(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.of(context).size.width / 4,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 30),
            children: [
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: clearAll,
                    icon: Center(
                        child: Text(
                      "AC",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: deleteLast,
                    icon: Center(child: Icon(Icons.backspace_outlined))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: _fromValue == NumberSystem.Hex
                        ? () {
                            _inputValue = _inputValue + 'F';

                            setState(() {
                              _updateConversion();
                            });
                          }
                        : null,
                    icon: Center(
                        child: Text(
                      "F",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: _fromValue == NumberSystem.Hex
                        ? () {
                            _inputValue = _inputValue + 'E';

                            setState(() {
                              _updateConversion();
                            });
                          }
                        : null,
                    icon: Center(
                        child: Text(
                      "E",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '7';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "7",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '8';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "8",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '9';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "9",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: _fromValue == NumberSystem.Hex
                        ? () {
                            _inputValue = _inputValue + 'D';

                            setState(() {
                              _updateConversion();
                            });
                          }
                        : null,
                    icon: Center(
                        child: Text(
                      "D",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '4';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "4",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '5';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "5",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '6';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "6",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: _fromValue == NumberSystem.Hex
                        ? () {
                            _inputValue = _inputValue + 'C';

                            setState(() {
                              _updateConversion();
                            });
                          }
                        : null,
                    icon: Center(
                        child: Text(
                      "C",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '1';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "1",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '2';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "2",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '3';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "3",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: _fromValue == NumberSystem.Hex
                        ? () {
                            _inputValue = _inputValue + 'B';

                            setState(() {
                              _updateConversion();
                            });
                          }
                        : null,
                    icon: Center(
                        child: Text(
                      "B",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: null,
                    icon: Center(child: Text(""))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _inputValue = _inputValue + '0';

                      setState(() {
                        _updateConversion();
                      });
                    },
                    icon: Center(
                        child: Text(
                      "0",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: null,
                    icon: Center(
                        child: Text(
                      "",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
              Center(
                child: IconButton(
                    iconSize: 30,
                    padding: EdgeInsets.zero,
                    onPressed: _fromValue == NumberSystem.Hex
                        ? () {
                            _inputValue = _inputValue + 'A';

                            setState(() {
                              _updateConversion();
                            });
                          }
                        : null,
                    icon: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 25),
                    ))),
              ),
            ],
          ),
        )
      ],
    );
  }

  deleteLast() {
    var newInput;
    if (int.parse(_inputValue) < 10) {
      newInput = "0";
    } else {
      newInput = _inputValue
          .toString()
          .substring(0, _inputValue.toString().length - 1);
    }

    _inputValue = newInput;

    setState(() {
      _updateConversion();
    });
  }

  clearAll() {
    setState(() {
      _inputValue = '0';
      _updateConversion();
    });
  }

  showBottomSheets(bool isFrom) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Wrap(
            children: NumberSystem.values
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
