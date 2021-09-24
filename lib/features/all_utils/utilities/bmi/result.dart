import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/cupertino.dart';
import 'package:share/share.dart';
import 'package:you/features/all_utils/extra/WidgetToPng.dart';
import 'package:you/features/all_utils/utilities/bmi/utils.dart';

class ResultPage extends StatelessWidget {
  final Color? color;
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final Gender gender;
  final String age;
  final String height;
  final String weight;

  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      required this.gender,
      required this.age,
      required this.height,
      required this.weight,
      this.color});

  final GlobalKey resultKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var infoStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
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
          "BMI CALCULATOR",
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Your Information",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Gender:",
                          style: infoStyle,
                        ),
                        Text(
                          describeEnum(gender),
                          style: infoStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Age:",
                          style: infoStyle,
                        ),
                        Text(
                          age,
                          style: infoStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Height:",
                          style: infoStyle,
                        ),
                        Text(
                          height,
                          style: infoStyle,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Weight:",
                          style: infoStyle,
                        ),
                        Text(
                          weight,
                          style: infoStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              RepaintBoundary(
                key: resultKey,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.width * .8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              bmiResult,
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width / 5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BMI",
                                  style: TextStyle(
                                    // color: Colors.white,
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  resultText,
                                  style: TextStyle(
                                    color: color,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                            elevation: 5,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 5,
                            ),
                          ),
                        ),
                        Text("Information"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text("Underweight"),
                                  alignment: Alignment.center,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text("Normal"),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text("Overweight"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Material(
                                  elevation: 5,
                                  child: Container(
                                    color: Colors.blue,
                                    height: 5,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Material(
                                  elevation: 5,
                                  child: Container(
                                    color: Colors.green,
                                    height: 5,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Material(
                                  elevation: 5,
                                  child: Container(
                                    color: Colors.red,
                                    height: 5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("16.0"),
                                    Text("18.5"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(""),
                                    Text("25.0"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(""),
                                    Text("40.0"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Powered by khabarhub",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.resolveWith<
                                    OutlinedBorder>(
                                (states) => RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (states) => Colors.green,
                            )),
                        onPressed: () => AutoRouter.of(context).pop(),
                        child: Text(
                          "Re-Calculate",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.resolveWith<
                                    OutlinedBorder>(
                                (states) => RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (states) => Colors.red,
                            )),
                        onPressed: () async {
                          //toto take ss and share

                          var file =
                              await captureWidgetAndReturnFilePath(resultKey);
                          if (file != null) Share.shareFiles([file.path]);
                        },
                        child: Text(
                          "Share",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
