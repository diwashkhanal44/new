import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';
import 'package:you/features/all_utils/extra/WidgetToPng.dart';

class AgeCalculator extends StatefulWidget {
  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  DateTime? dateOfBirth;
  DateTime? today;

  int? ageDay;
  int? ageYear;
  int? ageMonth;

  int? ageInYears;
  int? ageInMonths;
  int? ageInWeeks;
  int? ageInDays;
  late int ageInHours;
  int? ageInMinutes;

  int? nextBirthDayMonth;
  int? nextBirthDayDay;

  GlobalKey ageCalculate = GlobalKey();

  @override
  void initState() {
    super.initState();
    dateOfBirth = DateTime.now().subtract(Duration(days: 10 * 365 + 96));
    today = DateTime.now();
    _calculateAge();
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

  _calculateAge() {
    var _ageDayTemp = dateOfBirth!.difference(today!).inDays.abs();

    var _ageYear = (_ageDayTemp / 365);
    var _ageMonth = (_ageYear - _ageYear.truncate()) * 12;
    var _ageDay = (_ageMonth - _ageMonth.truncate()) * 30;

    setState(() {
      ageDay = _ageDay.truncate();
      ageMonth = _ageMonth.truncate();
      ageYear = _ageYear.truncate();

      ageInDays = _ageDayTemp;
      ageInYears = _ageYear.truncate();
      ageInMonths = (_ageDayTemp / 30).truncate();
      ageInWeeks = (_ageDayTemp / 7).truncate();
      ageInHours = _ageDayTemp * 24;
      ageInMinutes = ageInHours * 60;
    });

    var thisYearGone = today!
        .difference(DateTime(today!.year, dateOfBirth!.month, dateOfBirth!.day))
        .isNegative;

    int daysLeft;
    if (!thisYearGone) {
      daysLeft = today!
          .difference(
              DateTime(today!.year + 1, dateOfBirth!.month, dateOfBirth!.day))
          .inDays
          .abs();
    } else {
      daysLeft = today!
          .difference(
              DateTime(today!.year, dateOfBirth!.month, dateOfBirth!.day))
          .inDays
          .abs();
    }

    var leftMonthTemp = daysLeft / 30;
    var leftDaysTemp = (leftMonthTemp - leftMonthTemp.truncate()) * 30;

    nextBirthDayMonth = leftMonthTemp.truncate();
    nextBirthDayDay = leftDaysTemp.truncate();
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
          "Age",
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date of Birth",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          dateOfBirth = await showDatePicker(
                                  context: context,
                                  initialDate: dateOfBirth!,
                                  firstDate: DateTime(1000),
                                  lastDate: DateTime(2099)) ??
                              dateOfBirth;
                          setState(() {
                            _calculateAge();
                          });
                        },
                        child: Row(
                          children: [
                            Text(
                              DateFormat(DateFormat.YEAR_MONTH_WEEKDAY_DAY)
                                  .format(dateOfBirth!),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).accentColor),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Theme.of(context).accentColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          today = await showDatePicker(
                                  context: context,
                                  initialDate: today!,
                                  firstDate: DateTime(1000),
                                  lastDate: DateTime(2099)) ??
                              today;
                          setState(() {
                            _calculateAge();
                          });
                        },
                        child: Row(
                          children: [
                            Text(
                              DateFormat(DateFormat.YEAR_MONTH_WEEKDAY_DAY)
                                  .format(today!),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).accentColor),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Theme.of(context).accentColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                RepaintBoundary(
                  key: ageCalculate,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Age",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      Container(
                                        height: 90,
                                        child: Row(
                                          children: [
                                            Text(
                                              ageYear.toString(),
                                              style: TextStyle(
                                                fontSize: 70,
                                                color: Theme.of(context)
                                                    .accentColor,
                                              ),
                                            ),
                                            Text(
                                              "years",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "$ageMonth months | $ageDay day",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 170,
                                  width: 2,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black26,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Next BirthDay",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundColor:
                                            Theme.of(context).accentColor,
                                        child: SvgPicture.asset(
                                          "assets/Archive/birthday-cake.svg",
                                          height: 50,
                                          width: 50,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Theme.of(context).primaryColor
                                              : Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "$nextBirthDayMonth months | $nextBirthDayDay days",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            width: double.infinity,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black26,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Summary",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).accentColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Year",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "$ageInYears",
                                          style: TextStyle(fontSize: 22),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Days"),
                                        Text(
                                          "$ageInDays",
                                          style: TextStyle(fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Months",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "$ageInMonths",
                                          style: TextStyle(fontSize: 22),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Hours",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "$ageInHours",
                                          style: TextStyle(fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Weeks",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "$ageInWeeks",
                                          style: TextStyle(fontSize: 22),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Minutes",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "$ageInMinutes",
                                          style: TextStyle(fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text("Powered By khabarhub"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () async {
                var file = await captureWidgetAndReturnFilePath(ageCalculate);
                Share.shareFiles([file!.path]);
              },
              child: Container(
                height: 50,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).accentColor,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Share",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
