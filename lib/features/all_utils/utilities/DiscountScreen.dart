import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DiscountScreen extends StatefulWidget {
  @override
  _DiscountScreenState createState() => _DiscountScreenState();
}

enum selected { discount, original }

class _DiscountScreenState extends State<DiscountScreen> {
  double _inputValue = 100;
  double _discount = 10;
  bool addPeriodOriginal = false;
  bool addPeriodDiscount = false;
  double? finalPrice;
  double? saving;

  selected? _selected;

  @override
  void initState() {
    _selected = selected.original;
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
          'Discount',
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
    finalPrice = _inputValue - _inputValue * _discount / 100;
    saving = _inputValue * _discount / 100;
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
                        onTap: () {},
                        child: Text("Original price"),
                      ),
                      InkWell(
                          onTap: () {
                            _selected = selected.original;
                            setState(() {});
                          },
                          child: Text(
                            "$_inputValue",
                            style: TextStyle(
                                color: _selected == selected.original
                                    ? Colors.redAccent
                                    : null),
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Discount (% off)"),
                        InkWell(
                          onTap: () {
                            _selected = selected.discount;
                            setState(() {});
                          },
                          child: Text(
                            "$_discount",
                            style: TextStyle(
                                color: _selected == selected.discount
                                    ? Colors.redAccent
                                    : null),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Final price"),
                        Text("$finalPrice"),
                      ],
                    ),
                  ),
                ),
              ),
              Text("You saved $saving "),
            ],
          ),
        ),
        Divider(),
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
                                  if (_selected == selected.original) {
                                    if (addPeriodOriginal) {
                                      if (_inputValue
                                              .toString()
                                              .split('.')[1] ==
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
                                  } else {
                                    if (addPeriodDiscount) {
                                      if (_discount.toString().split('.')[1] ==
                                          '0') {
                                        _discount = double.parse(
                                            _discount.toInt().toString() +
                                                '.' +
                                                (index + 1).toString());
                                      } else {
                                        _discount = double.parse(
                                            _discount.toString() +
                                                (index + 1).toString());
                                      }
                                    } else {
                                      _discount = double.parse(
                                          _discount.toInt().toString() +
                                              (index + 1).toString());
                                    }
                                    setState(() {
                                      _updateConversion();
                                    });
                                  }
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
                                      if (_selected == selected.original) {
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
                                      } else {
                                        if (_discount
                                                .toString()
                                                .split('.')[1] ==
                                            '0') {}

                                        _discount = double.parse(
                                            _discount.toInt().toString() +
                                                0.toString());
                                        setState(() {
                                          _updateConversion();
                                        });
                                      }
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
                                    if (_selected == selected.original) {
                                      addPeriodOriginal = true;
                                    } else {
                                      addPeriodDiscount = true;
                                    }
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

    if (_selected == selected.original) {
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
    } else {
      if (_discount < 10) {
        newInput = "0";
      } else if (_discount.toString().split('.')[1] == '0') {
        newInput =
            _discount.toString().substring(0, _discount.toString().length - 3);
      } else {
        newInput =
            _discount.toString().substring(0, _discount.toString().length - 1);
      }

      _discount = double.parse(newInput);
      setState(() {
        _updateConversion();
      });
    }
  }

  clearAll() {
    if (_selected == selected.original) {
      addPeriodOriginal = false;

      setState(() {
        _inputValue = 0;
        _updateConversion();
      });
    } else {
      addPeriodDiscount = false;

      setState(() {
        _discount = 0;
        _updateConversion();
      });
    }
  }
}
