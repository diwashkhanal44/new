import 'package:clean_nepali_calendar/clean_nepali_calendar.dart';
import 'package:flutter/material.dart' hide CalendarDatePicker;
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:you/core/utils/utils.dart';
import 'package:you/features/calender/models/NepaliDate.dart';

import 'cubits/calender_expand_collapse/calender_expand_collapse_cubit.dart';
import 'cubits/calender_tithis/calender_tithis_cubit.dart';

class CalenderShutter extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final expandController = useAnimationController(
      duration: Duration(milliseconds: 300),
    );

    final animation = useState(CurvedAnimation(
      parent: expandController,
      curve: Curves.easeInSine,
    ));

    void onTapExpandCollapse() {
      BlocProvider.of<CalenderExpandCollapseCubit>(context).expandOrCollapse();
      BlocProvider.of<CalenderExpandCollapseCubit>(context).state
          ? expandController.forward()
          : expandController.reverse();
    }

    return Column(
      children: [
        Column(
          children: [
            SizeTransition(
              axisAlignment: 1.0,
              sizeFactor: animation.value,
              child: Column(
                children: [_buildCalendarDatePicker(context)],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Divider(thickness: 2),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  child: IconButton(
                      enableFeedback: true,
                      iconSize: 25,
                      icon: Icon(Icons.date_range),
                      onPressed: onTapExpandCollapse),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCalendarDatePicker(BuildContext context) => CalendarModule();
}

class CalendarModule extends HookWidget {
  final NepaliCalendarController calendarController =
      NepaliCalendarController();

  CalendarModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CleanNepaliCalendar(
          onChangedMonth: (NepaliDateTime date) {
            monthChange(
              context,
              date,
            );
          },
          headerDayBuilder: (_, index) {
            return Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: FittedBox(
                    child: Text(
                      '',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: (index == 6)
                              ? Colors.red
                              : Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ),
            );
          },
          headerBuilder: headerBuilder,
          headerDayType: HeaderDayType.initial,
          controller: calendarController,
          calendarStyle: CalendarStyle(
            cellHeight: 70,
            selectedColor: Colors.deepOrange,
            dayStyle: TextStyle(fontWeight: FontWeight.bold),
            todayStyle: TextStyle(fontSize: 20.0),
            todayColor: Colors.orange.shade400,
            renderDaysOfWeek: true,
            highlightToday: true,
          ),
          headerStyle: HeaderStyle(
            enableFadeTransition: true,
            centerHeaderTitle: false,
          ),
          initialDate: NepaliDateTime.now(),
          firstDate: NepaliDateTime(2000),
          lastDate: NepaliDateTime(2099),
          language: Language.nepali,
          onDaySelected: (day) {
            BlocProvider.of<CalenderTithisCubit>(context)
                .changeDate(newDate: NepaliDate.fromNepaliDateTime(day));
          },
          dateCellBuilder: (isToday,
              isSelected,
              isDisabled,
              NepaliDateTime nepaliDate,
              label,
              text,
              calendarStyle,
              isWeekend) {
            Decoration? _buildCellDecoration() {
              if (isSelected) {
                return BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfffff5dc),
                );
              } else if (isToday && calendarStyle.highlightToday) {
                return BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff009787),
                );
              } else {
                return null;
              }
            }

            var color;
            if (isToday) color = Colors.white;
            if (isSelected) {
              if (isToday) color = Colors.black;
              if (Theme.of(context).brightness == Brightness.dark)
                color = Colors.black;
            }

            return BlocBuilder<CalenderTithisCubit, CalenderTithisState>(
              builder: (context, _) {
                final anyEvent = BlocProvider.of<CalenderTithisCubit>(context)
                    .state
                    .maybeMap(
                        orElse: () => null,
                        loaded: (loaded) {
                          if (loaded.holidaysOrEvents?.data != null &&
                              loaded.holidaysOrEvents!.data!.isNotEmpty) {
                            final selectedDatedate = loaded
                                .holidaysOrEvents?.data
                                ?.where((element) =>
                                    element.date_np ==
                                    "${nepaliDate.year}-${nepaliDate.month}-${nepaliDate.day}");

                            if (selectedDatedate != null &&
                                selectedDatedate.isNotEmpty)
                              return selectedDatedate
                                  .map((e) => e.type == "holiday")
                                  .toList()
                                  .contains(true);
                            else
                              return null;
                          }
                          return null;
                        });
                return Container(
                  decoration: _buildCellDecoration(),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: FittedBox(
                              child: Text(
                                text,
                                style: TextStyle(fontSize: 18, color: color),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            nepaliDate.toDateTime().day.toString(),
                            style: TextStyle(fontSize: 10, color: color),
                          ),
                          // to show events
                        ],
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: anyEvent == null
                            ? Colors.transparent
                            : anyEvent
                                ? Colors.red
                                : Colors.orange,
                      )
                    ],
                  ),
                );
              },
            );
          },
        ),
        Divider(height: 1),
        BlocBuilder<CalenderTithisCubit, CalenderTithisState>(
          builder: (context, state) {
            final color =
                BlocProvider.of<CalenderTithisCubit>(context).state.maybeMap(
                    orElse: () => null,
                    loaded: (loaded) {
                      if (loaded.holidaysOrEvents?.data != null &&
                          loaded.holidaysOrEvents!.data!.isNotEmpty) {
                        final selectedDatedate = loaded.holidaysOrEvents?.data
                            ?.where((element) =>
                                element.date_np ==
                                "${state.selectedDate.year}-${state.selectedDate.month}-${state.selectedDate.day}");

                        if (selectedDatedate != null &&
                            selectedDatedate.isNotEmpty)
                          return selectedDatedate
                                  .map((e) => e.type == "holiday")
                                  .toList()
                                  .contains(true)
                              ? Colors.red
                              : null;
                        else
                          return null;
                      }
                      return null;
                    });

            return ListTile(
              dense: true,
              leading: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    NepaliDateFormat.MMMM(Language.nepali)
                        .format(state.selectedDate),
                    style: TextStyle(color: color),
                  ),
                  Text(
                    NepaliDateFormat.d(Language.nepali)
                        .format(state.selectedDate),
                    style: TextStyle(color: color),
                  ),
                ],
              ),
              title: Text(
                "${BlocProvider.of<CalenderTithisCubit>(context).state.maybeMap(orElse: () => '', loaded: (loaded) {
                      if (loaded.holidaysOrEvents?.data != null &&
                          loaded.holidaysOrEvents!.data!.isNotEmpty) {
                        final selectedDatedate = loaded.holidaysOrEvents?.data
                            ?.where((element) =>
                                element.date_np ==
                                "${state.selectedDate.year}-${state.selectedDate.month}-${state.selectedDate.day}");

                        if (selectedDatedate != null &&
                            selectedDatedate.isNotEmpty)
                          return selectedDatedate
                              .map((e) => e.name)
                              .toList()
                              .addInBetweenElements('\n')
                              .toString()
                              .replaceAll("[", '')
                              .replaceAll(",", '')
                              .replaceAll("/", '\n')
                              .replaceAll("]", '');
                        else
                          return 'N/A';
                      }
                      return 'N/A';
                    })}",
                style: TextStyle(color: color),
              ),
              subtitle: Text(
                "${BlocProvider.of<CalenderTithisCubit>(context).state.maybeMap(orElse: () => '', loaded: (loaded) {
                      if (loaded.tithis?.data != null &&
                          loaded.tithis!.data!.isNotEmpty) {
                        final selectedDatedate = loaded.tithis?.data?.where((element) =>
                            "${element.year}-${element.month}-${element.day}" ==
                            "${state.selectedDate.year}-${state.selectedDate.month}-${state.selectedDate.day}");
                        if (selectedDatedate != null &&
                            selectedDatedate.isNotEmpty)
                          return selectedDatedate
                              .map((e) => e.lunar_day)
                              .toList()
                              .addInBetweenElements('|')
                              .toString()
                              .replaceAll("[", '')
                              .replaceAll("]", '');
                        else
                          return 'N/A';
                      }
                      return 'N/A';
                    })}",
                style: TextStyle(color: color),
              ),
              trailing: Text(
                "${BlocProvider.of<CalenderTithisCubit>(context).state.maybeMap(orElse: () => '', loaded: (loaded) {
                      if (loaded.holidaysOrEvents?.data != null &&
                          loaded.holidaysOrEvents!.data!.isNotEmpty) {
                        final selectedDatedate = loaded.holidaysOrEvents?.data
                            ?.where((element) =>
                                element.date_np ==
                                "${state.selectedDate.year}-${state.selectedDate.month}-${state.selectedDate.day}");

                        if (selectedDatedate != null &&
                            selectedDatedate.isNotEmpty)
                          return selectedDatedate.first.parsedDate ?? 'N/A';
                        else
                          return 'N/A';
                      }
                      return 'N/A';
                    })}",
                style: TextStyle(color: color),
              ),
            );
          },
        ),
      ],
    );
  }

  monthChange(BuildContext context, NepaliDateTime day) {
    BlocProvider.of<CalenderTithisCubit>(context)
        .fetchData(nepaliDate: NepaliDate.fromNepaliDateTime(day));
  }

  Widget headerBuilder(BoxDecoration decoration, Function prev, Function next,
      NepaliDateTime? date, toggleViewMode) {
    return Container(
      decoration: decoration,
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: toggleViewMode,
              child: Row(
                children: [
                  Icon(Icons.arrow_drop_down),
                  Text(
                    '${NepaliUnicode.convert('${date!.year} | ${date.toDateTime().year}')}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: next as void Function()?,
          ),
          Text(
            ' ${formattedMonth(date.month, Language.nepali)} | ${getFormattedEnglishMonth(date.toDateTime().month)} - ${getFormattedEnglishMonth(date.toDateTime().month + 1)}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          IconButton(
            icon: Icon(Icons.arrow_right),
            onPressed: prev as void Function()?,
          ),
        ],
      ),
    );
  }

// Widget cellBuilder
}
